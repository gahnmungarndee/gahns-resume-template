%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             Resume Class              %
%                                       %
% Developed by Gahn Mungarndee,         %
% undergraduate student in Industrial   %
% Engineering at Purdue University.     %
%                                       %
% Last updated on 9/14/2023             %
%                                       %
% Contact at gahn@mungarndee.com.       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Class Identification
\NeedsTeXFormat{LaTeX2e} % Sets required LaTeX version
\ProvidesClass{resume}[2023/09/14 Resume class] % Defines this class

% Define Paper Properties
\LoadClass{article} % Import article class
\thispagestyle{empty} % Removes page number
\setlength{\parindent}{0pt} % Sets indent for new paragraph to 0pt

% Include Packages and Options
\RequirePackage[letterpaper, margin=0.5in]{geometry} % Page options

\RequirePackage{hyperref} % Hyperlinks

\RequirePackage{phonenumbers} % Format phone numbers
    \setphonenumbers{foreign,foreign-area-code-sep=brackets}

\RequirePackage{pifont} % Fancy items

\RequirePackage{ifthen} % Logic statements

\RequirePackage{titlesec} % Format (sub)titles, (sub)headings
    \titleformat % Format section headings
        {\section}
        {\large\bfseries\raggedright}
        {}
        {0em}
        {\MakeUppercase}
        [\titlerule]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             New Commands              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom Bullet Point
\newcommand{\newitem}{\item[\ding{118}]}

% Multi-line Comments
\newcommand{\multicomment}[1]{}

% Name/Title
\newcommand{\name}[1]{
    \begin{center}
        \Huge{\textbf{#1}}
    \end{center}
} 

% Contact Info
\newcommand\contact[4]{
    \begin{center}
        \makebox{
            \href{mailto:#1}{\underline{#1}} \textbar\space
            \phonenumber[country=US,foreign]{#2} \textbar\space
            \href{https://#3}{\underline{#3}} \textbar\space
            #4}
    \end{center}
}

% Education Info
\newcommand{\education}[8]{
    \begin{tabular*}
        {\textwidth}
        {l@{\extracolsep{\fill}}r}
    	{\bfseries #1 \textbar\space {\small #2}} & {\bfseries #3 - #4} \\
            {#5\ifthenelse{\equal{#6}{}}{}{, #6}}
            \ifthenelse{\equal{#7}{}}{}{\\{#7} & \\}
    \end{tabular*}\vspace{-0.8em}

    \ifthenelse{\equal{#8}{}}{}{
        \begin{itemize}
            \setlength\itemsep{-0.5em}
            \newitem \textbf{Involvement \& Honors:} #8
        \end{itemize}
    }
}

% Work Info
\newcommand{\work}[6]{
    \begin{tabular*}
        {\textwidth}
        {l@{\extracolsep{\fill}}r}
    	{\bfseries #1 \textbar\space {\small #2}} & {\bfseries #3 - #4} \\
            {#5} & \\
    \end{tabular*}\vspace{-0.5em}

    \begin{itemize}
        \setlength\itemsep{0em}
        #6
    \end{itemize}
}

% Volunteer Info
\newcommand{\volunteer}[5]{
    \begin{tabular*}
        {\textwidth}
        {l@{\extracolsep{\fill}}r}
    	{\bfseries #1} & {\bfseries #2 - #3} \\
            {#4} & \\
    \end{tabular*}\vspace{-0.5em}

    \begin{itemize}
        \setlength\itemsep{0em}
        #5
    \end{itemize}
}

% Generic Bulletpoints
\newcommand{\general}[1]{
    \begin{itemize}
        \setlength\itemsep{0em}
        #1
    \end{itemize}
}