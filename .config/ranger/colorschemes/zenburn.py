# This file is part of ranger, the console file manager.
# License: GNU GPL version 3, see the file "AUTHORS" for details.

from __future__ import (absolute_import, division, print_function)

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import (
    default, blue, cyan, green, magenta, red, default, yellow, default,
    normal, bold, reverse, dim, BRIGHT,
    default_colors
)
cyan = default

class Default(ColorScheme):
    progress_bar_color = default

    def use(self, context):  # pylint: disable=too-many-branches,too-many-statements
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                bg = red
            if context.border:
                fg = default
            if context.media:
                if context.image:
                    fg = red
                else:
                    fg = red
            if context.container:
                fg = red
            if context.directory:
                attr |= normal
                fg = default
                # fg += BRIGHT
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= normal
                fg = red
                # fg += BRIGHT
            if context.socket:
                attr |= normal
                fg = red
                # fg += BRIGHT
            if context.fifo or context.device:
                fg = red
                if context.device:
                    attr |= normal
                    # fg += BRIGHT
            if context.link:
                fg = cyan if context.good else red
            if context.tag_marker and not context.selected:
                attr |= normal
                if fg in (red, magenta):
                    fg = default
                else:
                    fg = red
                # fg += BRIGHT
            if not context.selected and (context.cut or context.copied):
                attr |= normal
                fg = default
                # fg += BRIGHT
                # If the terminal doesn't support bright colors, use dim default 
                # instead of default.
                if BRIGHT == 0:
                    attr |= dim
                    fg = default
            if context.main_column:
                # Doubling up with BRIGHT here causes issues because it's
                # additive not idempotent.
                if context.selected:
                    attr |= normal
                if context.marked:
                    attr |= normal
                    fg = red
            if context.badinfo:
                if attr & reverse:
                    bg = red
                else:
                    fg = red

            if context.inactive_pane:
                fg = cyan

        elif context.in_titlebar:
            if context.hostname:
                fg = red if context.bad else cyan
            elif context.directory:
                fg = default
            elif context.tab:
                if context.good:
                    bg = green
            elif context.link:
                fg = cyan
            attr |= normal

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = cyan
                elif context.bad:
                    fg = red
            if context.marked:
                attr |= normal | reverse
                fg = red
                # fg += BRIGHT
            if context.frozen:
                attr |= normal | reverse
                fg = cyan
                # fg += BRIGHT
            if context.message:
                if context.bad:
                    attr |= normal
                    fg = red
                    # fg += BRIGHT
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = red
                attr &= ~bold
            if context.vcscommit:
                fg = red
                attr &= ~bold
            if context.vcsdate:
                fg = cyan
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = red

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~normal
            if context.vcsconflict:
                fg = red
            elif context.vcsuntracked:
                fg = cyan
            elif context.vcschanged:
                fg = red
            elif context.vcsunknown:
                fg = red
            elif context.vcsstaged:
                fg = green
            elif context.vcssync:
                fg = green
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~normal
            if context.vcssync or context.vcsnone:
                fg = green
            elif context.vcsbehind:
                fg = red
            elif context.vcsahead:
                fg = red
            elif context.vcsdiverged:
                fg = red
            elif context.vcsunknown:
                fg = red
        return fg, bg, attr