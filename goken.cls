%% file `goken.cls',
%% �w�ꌤ�_�W�x�p�X�^�C���t�@�C��
%% 2020/11/17 v1.0
%% 2020/12/07 v1.1: ���{��t�H���g�A�w�b�_�[�ʒu�A�p��p�w�b�_�[���Җ��Atitlesec��paragraph�������Ȃ��̂�����
%% 2021/03/13 v1.2:
%% - ���p�̍ۂ́u:�v�̌�ɔ��p�X�y�[�X��ǉ�
%% - p. 1�w�b�_�[�̉����̃t�H���g��Century Schoolbook�ɂ��A�Ō�Ƀs���I�h�ǉ�
%% - �y�[�W�ԍ��t�H���g��Century Schoolbook��
%% - MS Word�e���v���[�g�ŃO���b�h���ɍ��킹�Ȃ��ӏ��i�p���^�C�g���A�v�|�A�����A�r���A�Q�l�����j�̍s�Ԃ�0pt��
%% 2021/03/31 v1.3: ������_�b�V���݂͂���R������
%% �쌳�@�T��
%% nomoto@tufs.ac.jp
%% TO DO: �����̃T�C�Y����������������A�^�C�g���Ɏӎ���t������悤�ɂ���
%\NeedsTeXFormat{pLaTeX2e}
\ProvidesFile{goken}[2021/03/31 v1.3]
\LoadClass[11pt,twoside,dvipdfmx]{jsarticle}
%10pt�ɂ���Ƙa����������������̂�1pt�ǉ��B������a4paper���w�肷��ƁAgeometry�̗]�����������s����B
\RequirePackage{etoolbox}

\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage{helvet}
%\RequirePackage[ms-dx]{pxjafont} %v1.0 (pxjafont obsolete, replaced by pxchfon)
\RequirePackage[noalphabet]{pxchfon}
\setminchofont[0]{msmincho.ttc} % �l�r����
\setboldminchofont{yumindb.ttf} % ������
\setgothicfont[0]{msgothic.ttc} % �l�r�S�V�b�N
\setboldgothicfont{yugothb.ttc} % ���S�V�b�N
\RequirePackage[deluxe,multi]{otf} %multi for Korean v1.1

\RequirePackage[dvipdfmx]{graphicx}
\RequirePackage[dvipdfmx]{color}

\RequirePackage{calc}
\RequirePackage[a4paper,truedimen,hmargin=25truemm,vmargin=30truemm,%showframe,
headheight=15truemm, headsep=15truemm-\headheight, footskip=16truemm]{geometry}

\def\@title{!INSERT TITLE!}
\def\@entitle{!INSERT ENGLISH TITLE!}
\def\@subtitle{}
\def\@ensubtitle{}
\def\@author{!INSERT AUTHOR NAME!}
\def\@hauthor{!INSERT AUTHOR NAME!}
\def\@enauthor{!INSERT ROMINIZED AUTHOR NAME!}
\def\@enhauthor{!INSERT ROMINIZED AUTHOR NAME!} %1.1
\def\@affil{!INSERT AFFILIATION!}
\def\@startpage{!INSERT START PAGE NUMBER!}
\def\@endpage{!INSERT END PAGE NUMBER!}
\def\@date{!INSERT YEAR!}
\def\@jourvolume{!INSERT VOLUME NUMBER!}
\def\@category{!CHOOSE CATEGORY!}
\def\@email{!INSERT CONTACT E-MAIL ADDRESS!}
\def\@received{!INSERT DATE RECEIVED!}

\def\title#1{\gdef\@title{#1}}
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\entitle#1{\gdef\@entitle{#1}}
\def\ensubtitle#1{\gdef\@ensubtitle{#1}}
\def\hauthor#1{\gdef\@hauthor{#1}}
\def\enauthor#1{\gdef\@enauthor{#1}}
\def\enhauthor#1{\gdef\@enhauthor{#1}} %1.1
\def\affil#1{\gdef\@affil{#1}}
\def\startpage#1{\gdef\@startpage{#1}\setcounter{page}{#1}}
\def\endpage#1{\gdef\@endpage{#1}}
\def\date#1{\gdef\@date{#1}}
\def\jourvolume#1{\gdef\@jourvolume{#1}}
\def\category#1{\gdef\@category{#1}}
\def\email#1{\gdef\@email{#1}}
\def\received#1{\gdef\@received{#1}}

%% �^�C�g���Z�k�Łi�K�v�ȏꍇ�j
\def\runningtitle#1{\gdef\@runningtitle{#1}}

%% �w�b�_�[�p�̒��Җ�
\def\headerauthor#1{\gdef\@headerauthor{#1}}

%% �^�C�g���A���ҁA����
\renewcommand{\maketitle}{%
	\begin{center}
	%% �^�C�g���AMS�S�V�b�N 12pt; ����AMS�S�V�b�N 11pt Bold
		\ifdefempty{\@subtitle}{{\fontsize{12pt}{12pt}\selectfont\textsf{\@title}}\par}{{\large\textsf{\@title�F}}\par{\fontsize{11pt}{11pt}\selectfont\textsf{\@subtitle}}\par} %v1.3
	%% �^�C�g���i�p�j�ATimes New Roman 11pt Bold;
	%% ����i�p�j�ATimes New Roman 10pt Bold
		\ifdefempty{\@ensubtitle}{{\fontsize{11pt}{11pt}\selectfont\textbf{\@entitle}}\par}{{\fontsize{11pt}{11pt}\selectfont\textbf{\@entitle: }}\par{\fontsize{10pt}{12pt}\selectfont\textbf{\@ensubtitle}\par}} %v1.2
		\vspace{.7\baselineskip}
	%% ���ҁAMS���� 12pt bold
	\textbf{\fontsize{12pt}{12pt}\selectfont\@author}\par
	%% ���ҁi�p�j�ATimes New Roman 12pt bold
	\textbf{\fontsize{12pt}{12pt}\selectfont\@enauthor}\par
	\vspace{.7\baselineskip}
	%% �����AMS���� 8pt
	{\fontsize{8pt}{10pt}\selectfont\@affil\par} %v1.2 \small > \fontsize
	\vspace{.7\baselineskip}
	\end{center}
	%CC-BY�L��
	\begin{figure}[b]
		\includegraphics[width=\linewidth]{cc-by.png}
		\vspace{-2\baselineskip}
	\end{figure}
	\thispagestyle{first}
}

%% �v�|�AMS���� 10pt
\renewenvironment{abstract}
{\fontsize{10pt}{12pt}\selectfont\noindent\textgt{�v�|�F}}{\par\vspace{\baselineskip}} %v1.2 \fontsize
%% �v�|�i�p�j�ATimes New Roman 10pt
\newenvironment{enabstract}
{\fontsize{10pt}{12pt}\selectfont\noindent\textbf{Abstract: }}{\par\vspace{.8\baselineskip}} %v1.2 \fontsize

%% �L�[���[�h�AMS���� 10pt
\newcommand{\keyword}[1]{\noindent\textgt{�L�[���[�h�F}#1 \par}
%% �L�[���[�h�i�p�j�ATimes New Roman 10pt
\newcommand{\enkeyword}[1]{\noindent\textbf{Keywords:} #1 \par\vspace{1.4\baselineskip}}

%% �A����A���e�󗝓�
\newcommand{\metainfo}{%
	\vspace{1.4\baselineskip}
	\noindent\textgt{���M�ҘA����F}\@email\par\noindent\textgt{���e�󗝓��F}\@received}

%%�i���͂��߂̎�����
\RequirePackage{indentfirst}

%% Might as well redefine the quote environments too!
\renewenvironment{quote}
{\list{}{
	\setlength{\leftmargin}{1cm}%
	\setlength{\rightmargin}{\leftmargin}%
	}%
	\item\relax}
{\endlist}

\renewenvironment{quotation}
{\list{}{
	\setlength{\leftmargin}{1cm}%
	\setlength{\rightmargin}{\leftmargin}%
	}%
	\item\relax}
{\endlist}

\RequirePackage{enumitem}
\setlist[itemize]{nosep}
\setlist[enumerate]{nosep}

%% sectional titles
\RequirePackage{titlesec}
\titleformat{\section}{\sffamily}{\thesection.}{.5em}{}
\titlespacing*{\section}{0pt}{*1.5}{0pt}
\titleformat{\subsection}{\sffamily}{\thesubsection}{.5em}{}
\titlespacing*{\subsection}{0pt}{*1.5}{0pt}
\titleformat{\subsubsection}{\sffamily}{\thesubsubsection}{.5em}{}
\titlespacing*{\subsubsection}{0pt}{*1.5}{0pt}
\renewcommand{\jsParagraphMark}{} %v1.1

%% Running headers and footers
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyhead[CO]{{\fontsize{8pt}{8pt}\selectfont \@title�C\@hauthor\\\vspace{-5pt}\@entitle, \@enhauthor}\vfill} %1.1 (@enauthor > @enhauthor)
\cfoot{\fontfamily{pnc}{\fontsize{9pt}{9pt}\selectfont �|\thepage�|}} %v1.2
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{first}{
	\fancyhf{}
	\rhead{\fontfamily{pnc}{\fontsize{8pt}{8pt}\selectfont �����O�����w��w�������w��w�������_�W�x��\@jourvolume{}�� (\@date), pp.~\@startpage--\@endpage.\\\vspace{2pt} %v1.2
	Tokyo University of Foreign Studies, \textit{Journal of the Institute of Language Research} No.~\@jourvolume{} (\@date), pp.~\@startpage--\@endpage.\\\vspace{.4\baselineskip}��\@category��\hfill}} %v1.2
	\cfoot{\fontfamily{pnc}{\fontsize{9pt}{9pt}\selectfont �|\thepage�|}} %v1.2
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{fancy}

%% Footnotes
\renewcommand\thefootnote{\arabic{footnote}}
%\renewcommand{\footnotesize}{\normalsize}
\renewcommand{\footnotesize}{\fontsize{10pt}{12pt}\selectfont} %v1.2
% From E-Ching Ng's ``A LaTeX setup''
\addtolength{\skip\footins}{10pt} % More space between body text and footnote rule
\addtolength{\footnotesep}{2pt}   % More space between footnote items %v1.2 (5pt > 2pt)
% Modified version of epltxfn.sty to get the footnote number in superscript (cf. section 6.8, ExPex documentation)
\RequirePackage{expex}
\def\everyfootnote{%
   \keepexcntlocal
   \excnt=1
   \lingset{exskip=1ex,interpartskip=0pt,exnotype=roman,sampleexno=,
      labeltype=alpha,labelanchor=numright,labeloffset=.6em,
      aboveglftskip=0pt,
      textoffset=.6em}
}
\renewcommand{\@makefntext}[1]{%
   \everyfootnote
   \parindent=1em
   \noindent
   \@textsuperscript{\scriptsize\@thefnmark}\enspace #1%
}

%% Float captions
\RequirePackage[singlelinecheck=false]{caption}
\captionsetup[table]{justification=raggedright,labelsep=period,font={sf}}
\captionsetup[figure]{justification=centering,labelsep=period,font={sf}}
\RequirePackage{floatrow}
\floatsetup[table]{style=plaintop,justification=raggedright}

%% natbib commands with unified bibliography style from http://celxj.org/
\RequirePackage{natbib}[2007/10/30]
\bibliographystyle{unified}
%% Citation style is (author date:page) e.g. (Sneddon 2006: 70)
\setcitestyle{authoryear,round,citesep={;},aysep={},yysep={,},notesep={:~}}%v1.1�ł�notesep={:}
\renewcommand{\refname}{\centerline{�Q�l����}\vspace{-\baselineskip}}
%https://tex.stackexchange.com/questions/93859/condense-the-space-between-bibliographic-entries v1.2
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{%
  \OLDthebibliography{#1}
  \setlength{\baselineskip}{11pt}
  \setlength{\parskip}{2pt}
%  \setlength{\itemsep}{1pt plus 0.3ex}
}

%%Bookmarks and links
\RequirePackage[pdfusetitle,dvipdfmx]{hyperref}
\hypersetup{
     bookmarksnumbered=true,
     colorlinks=true,
     linkcolor=black,
     citecolor=blue,
     filecolor=black,
     urlcolor=black,
}
\RequirePackage{pxjahyper}%bookmark in Japanese

\RequirePackage{doi}