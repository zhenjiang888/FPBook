\begin{introduction}
\item 布尔类型
\item 整数类型
\item 浮点数类型
\item 字符类型
\item 字符串类型
\end{introduction}

这一章主要介绍Haskell的主要基本类型和相关的基本函数，并说明函数的定义方法。
类型可以理解为一个集合。

\section{布尔类型：\hs{Bool}}

最简单的类型是布尔类型，它只包含两个布尔值：\hs{True}和\hs{False}。名字中的大写很重要。
作用于布尔值得操作符类似于C语言的情况：(\&\&)表示“逻辑与”，(||)表示“逻辑或”。
