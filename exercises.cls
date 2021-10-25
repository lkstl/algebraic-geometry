\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercises}[2021/10/21]

\LoadClass[a4paper]{article}

\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\RequirePackage{enumitem}
\RequirePackage{geometry}
\RequirePackage{mathtools}
\RequirePackage{multicol}
\RequirePackage{tikz-cd}

\geometry{top=2.5cm}
\setlength{\parindent}{0pt}
\setlength{\parskip}{\medskipamount}
\setenumerate[1]{label=(\alph*),topsep=0pt}
\setenumerate[2]{label=(\roman*),topsep=0pt}

\renewcommand{\maketitle}[6]{
  \pagestyle{empty}
  {#1}\hfill % Universität
  {#5}\\ % Dozent
  {#2}\hfill % Institut
  {#6}\\ % Assisstent
  {#3}\\ % Semester
  \begin{center}
    \Large\bfseries
    Exercises for {#4} % Vorlesungsname
  \end{center}
  \vspace{1.5em}
}

\newcounter{exc}
\newenvironment{exercise}[1][]{
  \addtocounter{exc}{1}\textbf{Exercise \theexc.} \emph{#1}\par
}{\vspace{1.5em}}
\newenvironment{bonus}[1][]{
  \textbf{Bonusaufgabe.} \emph{#1}\par
}{\vspace{1.5em}}
