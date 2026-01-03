% bibi.cls

% Here are some other good beamer classes:
% - http://svmiller.com/miscellany/my-custom-clemson-themed-beamer-style/
% - https://github.com/FuzzyWuzzie/Beamer-Theme-Execushares
% - https://github.com/elauksap/beamerthemepolimi
% - https://github.com/elauksap/focus-beamertheme
% - https://github.com/matze/mtheme
% - https://github.com/piazzai/arguelles/
% - https://www.win.tue.nl/latex/slides.pdf

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bibi}
% Dubious hack to avoid xcolor option clash;
% this must be here, do not put it below!
\PassOptionsToPackage{x11names}{xcolor} % Handout option
% Pass options and load the class:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax 
\LoadClass[aspectratio=169, serif]{beamer}

% Packages
\RequirePackage{lmodern}
\RequirePackage{fontspec}
\RequirePackage{tabularx}
\RequirePackage{totcount}
\RequirePackage{xcolor}

%%%%%%%%%
% Fonts %
%%%%%%%%%

\setbeamertemplate{frametitle}[default][center]
\setbeamerfont{frametitle}{series=\bfseries}
\setbeamerfont{frametitle}{size=\LARGE}
\setbeamercolor{frametitle}{fg=black}
\setbeamerfont{frametitle}{shape=\bf}

%%%%%%%%%%%
% General %
%%%%%%%%%%%

% Change itemize symbols
\setbeamertemplate{itemize items}{$\circ$}

% Grey after \pause:
\setbeamercovered{transparent}

% Not idiotic tabularx columns:
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{x}[1]{>{\raggedright\arraybackslash}p{#1}}

%%%%%%%%%%%%
% Footline %
%%%%%%%%%%%%

% For help:
% - https://latex.org/forum/viewtopic.php?t=2989
% - https://www.latex4technics.com/?note=2OA7

% No navigation symbols:
\beamertemplatenavigationsymbolsempty
\setbeamertemplate{footline}[frame number]

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\definecolor{mystructure}{HTML}{00b4d8}

\definecolor{block}{HTML}{F3F3FC}
\definecolor{blockfont}{HTML}{808080}

\definecolor{blockexample}{HTML}{ECF9F2}
\definecolor{blockexamplefont}{HTML}{77D4A3}

\definecolor{blockalerted}{HTML}{FFF0F4}
\definecolor{blockalertedfont}{HTML}{FF5784}

\colorlet{mystructure}{blockfont}
\usecolortheme[named=mystructure]{structure}
\setbeamercolor{frametitle}{fg=black}

%%%%%%%%%%
% Blocks %
%%%%%%%%%%

\setbeamertemplate{blocks}[rounded]
\setbeamerfont{block title}{size=\normalsize}

\setbeamercolor{block title}{fg=gray, bg=block}
\setbeamercolor{block body}{bg=block}

\setbeamercolor{block title alerted}{fg=blockalertedfont, bg=blockalerted}
\setbeamercolor{block body alerted}{bg=blockalerted}

\setbeamercolor{block title example}{fg=blockexamplefont, bg=blockexample}
\setbeamercolor{block body example}{bg=blockexample}


%%%%%%%%%%%%
% SECTIONS %
%%%%%%%%%%%%

\AtBeginSection[]{
  \begin{frame}
    \centering
    \Large
    \tableofcontents[currentsection]
  \end{frame}
}
