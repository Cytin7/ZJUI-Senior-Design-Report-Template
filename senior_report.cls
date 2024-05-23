\NeedsTeXFormat{LaTeX2e}  %specify the version of LaTeX as `LaTeX2e`
\ProvidesClass{senior_report}[2024/05/22 ECE445 Senior Design Individual Report Class by CYTIN with ChatGPT]
\LoadClass[10pt]{article}  %load the article class

\newif\if@showdate
\@showdatetrue  %set the default value to true
\DeclareOption{nodate}{\@showdatefalse}  %Declare an option to hide the date

\ProcessOptions\relax

% \RequirePackage{ctex}  %load the ctex package to support Chinese
\RequirePackage[a4paper, portrait, margin=1in, top=1.5in, bottom=1.5in]{geometry}
\RequirePackage[no-math]{fontspec}
\RequirePackage{amsmath}
\RequirePackage[nodayofweek]{datetime}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage{hyphenat}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage[skip=10pt plus2pt, tocskip=8pt plus2pt minus2pt, indent=0pt]{parskip}
\RequirePackage{chngcntr}
\RequirePackage{float}
\RequirePackage[titles]{tocloft}
\RequirePackage{caption}

% Add dots to table of Content
\renewcommand\cftdotsep{2}
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}} % for parts
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} % for sections, if you really want! (It is default in report and book class (So you may not need it).

% Set counters under section counter
\counterwithin{figure}{section}
\counterwithin{table}{section}
\counterwithin{equation}{section}

% Set font size
\newfontfamily\mainfont[Path=./font/]{Lato.ttf}[BoldFont=Lato-Semibold.ttf]
\newfontfamily\titlefont[Path=./font/]{RobotoSlab.ttf}[BoldFont=RobotoSlab-Bold.ttf]

% Define variables
\def\@StuID{[Student ID]}
\def\StuID#1{\renewcommand{\@StuID}{#1}}

\def\@Semester{[Spring 202X]}
\def\Semester#1{\renewcommand{\@Semester}{#1}}

\def\@Major{[Electrical Engineering]}
\def\Major#1{\renewcommand{\@Major}{#1}}

\def\@Grade{[2020]}
\def\Grade#1{\renewcommand{\@Grade}{#1}}

\def\@Supervisor{[Faculty Name]}
\def\Supervisor#1{\renewcommand{\@Supervisor}{#1}}

\def\@TA{[TA Name]}
\def\TA#1{\renewcommand{\@TA}{#1}}

\def\@Project{xx}
\def\Project#1{\renewcommand{\@Project}{#1}}

% Define useful commands
\newcommand{\setpageformat}[2]{
  \pagenumbering{#1}
  \setcounter{page}{#2}
}


% Redefine \maketitle to conditionally show date
\renewcommand{\maketitle}{
	\begin{titlepage}
		\linespread{1}\selectfont
		\begin{center}
			\mainfont
			{\Large Zhejiang University/University of Illinois Urbana-Champaign Institute\\[1.5cm]}
			{\Huge \textbf{Senior Design Individual Report\\[1.5cm]}}
			{\Huge \@title \\[0.5cm]}
			{\large By\\[1.3cm]}
			{\large Author Name: \@author \\[0.5cm]}
			{\large Student ID: \@StuID \\[1.2cm]}
			{\normalsize Individual Report for Senior Design, \@Semester \\[.5cm]}
			{\normalsize Major: \@Major \\[.5cm]}
			{\normalsize Grade: \@Grade \\[.5cm]}
			{\normalsize Supervisor: \@Supervisor \\[.5cm]}
			{\normalsize TA: \@TA \\[.8cm]}
			{\normalsize \@date \\[.5cm]}
			{\normalsize Project No. \@Project \\[.5cm]}
			\vfill
		\end{center}
	\end{titlepage}
}

% Add the checklist table
\newcommand{\addChecklistTable}{
	\begin{center}
		{\titlefont\large\textbf{Senior Design Individual Report Checklist}\\[.4cm]}
		{\mainfont\small Notes: Please filled out by the supervisor after the defense. \\[0.4cm]}
		\mainfont\mdseries
		\renewcommand{\arraystretch}{1.65}
		\begin{tabularx}{\textwidth}{|p{2.25cm}|X|p{1.67cm}|X|p{2.8cm}|p{1in}|}
			\hline
			Author Name    & & Student ID & & Supervisor                              & \\[2pt] \hline
			Major \& Grade & & Tel.       & & {Professional title \par of Supervisor} & \\[2pt] \hline
			Report title & \multicolumn{3}{l|}{} & Grade assessment & \\[4pt] \hline
		\end{tabularx}\\[.8cm]
		\renewcommand{\arraystretch}{2.1}
		\begin{tabularx}{\textwidth}{|p{3ex}@{ }X|*{2}{>{\centering\arraybackslash}p{1in}|}}
			\hline
			\multicolumn{2}{|c|}{\multirow{2}{*}{ \large\titlefont\textbf{Inspection Content}}}
			    & \multicolumn{2}{c|}{\large\titlefont\textbf {Evaluation (√)}} \\[4pt] \cline{3-4}
			    &  & \titlefont\textbf{A} & \titlefont\textbf{B} \\[2pt] \hline
			\mainfont
			1.  & Title Page (using a unified title page, blue recommended) &  &  \\[2pt] \hline
			2.  & Commitment Statement                                      &  &  \\[2pt] \hline
			3.  & Acknowledgement                                           &  &  \\[2pt] \hline
			4.  & Abstract (150 words or less)                              &  &  \\[2pt] \hline
			5.  & Contents (with corresponding page numbers)                &  &  \\[2pt] \hline
			6.  & Main body (page numbers start from this point)            &  &  \\[2pt] \hline
			7.  & Reference                                                 &  &  \\[2pt] \hline
			8.  & Appendix (as needed)                                      &  &  \\[2pt] \hline
			9.  & Author Resume                                             &  &  \\[2pt] \hline
			10. & Senior Design Report Task Assignment                      &  &  \\[2pt] \hline
			11. & Senior Design Report Assessment Form                      &  &  \\[2pt] \hline
		\end{tabularx}\\[.8cm]
		    
		\begin{tabularx}{\textwidth}{XXXX}
			\mainfont\large Inspector: &   & \large Inspection Date: &   \\ 
		\end{tabularx}
	\end{center}
	\newpage
}




\newcommand{\addCommitmentStatement}{
	\begin{center}
	\titlefont\large\textbf{
		Senior Design Individual Report\\[.5cm]
		Commitment Statement}\\[.7cm]
	\end{center}
	\begin{enumerate}[wide, labelwidth=!, labelindent=0pt, itemindent=!]
		\mainfont\sloppy \linespread{1.3}\selectfont
		\item \nohyphens{I solemnly promise that the Senior Design Individual Report submitted was completed in strict accordance with the relevant regulations of the institute and university under the guidance of the supervisor.}
		\item \nohyphens{In my Senior Design Individual Report, except where specifically and explicitly indicated, the report does not contain results that have been published or written by others.}
		\item \nohyphens{Any contribution to this report made by the teammates with whom I worked has been clearly stated in the report and acknowledged. }
		\item \nohyphens{I promise that I have not falsified data or committed other similar acts in the completion of the Senior Design Individual Report. }
		\item \nohyphens{If there is any infringement of intellectual property rights or breach of academic integrity in this Senior Design Individual Report, I shall bear the corresponding legal responsibility. }
		\item \nohyphens{I fully understand that Zhejiang University has the right to retain and send copies and electronic records of this report to relevant departments or institutions. I authorize Zhejiang University to compile all or part of the contents of this report into a relevant database for retrieval and dissemination, and can use photocopying, microprinting or scanning and other means of reproduction to preserve and archive the report.}
	\end{enumerate}
	\vspace*{7cm}
	\mainfont\large
	\begin{tabularx}{\textwidth}{X@{\hspace*{1in}}X}
		Author: 	 &  Date: \\[1em] 
		Supervisor:  &  Date: \\ 
	\end{tabularx}
	\newpage
}

% Set the section font size and color
\definecolor{sectionTitleColor}{RGB}{54,95,145}
\definecolor{subsectionTitleColor}{RGB}{79,129,189}

\titleformat{\section}
  {\color{sectionTitleColor}\titlefont\bfseries\Large}  
  {\thesection}{1em}{}  
\titleformat{\subsection}
  {\color{subsectionTitleColor}\titlefont\bfseries\large}  
  {\thesubsection}{1em}{}  
\titleformat{\subsubsection}
  {\color{subsectionTitleColor}\titlefont\bfseries\normalsize}  
  {\thesubsubsection}{1em}{}  