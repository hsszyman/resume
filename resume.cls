\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/05/15 Hayden Resume]

\LoadClass{article}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}
\usepackage{xstring}
\addtolength{\oddsidemargin}{-1in}
\pagenumbering{gobble}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% For Software highlights
\newcommand{\highlights}[8]{
    \begin{center}
    \fontsize{15}{15} \selectfont \textbf{
        Software Development Highlights
    }
    \end{center}
}

\newcommand{\sectionheader}[1]{
	{\framebox[\paperwidth - 1.4in]{\strut 
			\fontsize{15}{15} \selectfont #1 \hfill
		}
	}

}

\newcommand{\heading}[3]{
	\hspace{-3.5em}
    \begin{tabular}{r}
    	{\modfirst{#1}\kern-.29em\modfirst{#2}} \\
    	{\fontsize{11}{1} \selectfont \textit{#3}} \\
    \end{tabular}
    \newline
    \noindent\rule{\textwidth}{1pt}
    \vspace{-6mm}
}

\newcommand{\contact}[4]{
	\vspace{0mm}
    \begin{flushright}
    	\begin{tabular}{l}
    	#1 \\
    	Cell #2 | #3\\
    	GitHub #4 \\
    	\end{tabular}
    \end{flushright}
	\vspace{2mm}
}

\newcommand{\modfirst}[1]{
    \StrLeft{#1}{1}[\firstletter]
    \StrLen{#1}[\len]
    \StrRight{#1}{\numexpr \len-1}[\rest]
    {\fontsize{18} {14} \selectfont \noindent \textbf{\firstletter}} \kern-.475em
    {\fontsize{14} {14} \selectfont \noindent \textbf{\rest}}
}
