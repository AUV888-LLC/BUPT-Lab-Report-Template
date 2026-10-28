# 北京邮电大学实验报告 LaTeX 模板

基于 BUPTthesis 排版风格改造的实验报告模板。
相比原模板，已删除诚信声明、摘要、参考文献（bib）和致谢等非实验报告内容。

## 快速开始

1. 修改 [metadata.tex](metadata.tex)，填写课程名称、实验名称、学院、专业、班级、学号、姓名、指导教师和日期。
2. **指导教师栏目已经注释掉，如果需要指导教师，只需要全局搜索 `supervisor` 解除注释即可**
3. 按实验内容修改 [chapters/ch_intro.tex](chapters/ch_intro.tex) 至 [chapters/ch_concln.tex](chapters/ch_concln.tex) 中的章节。
4. 实验结果截图可新建 `figs/` 目录或放在自己的图片目录中，并在 [chapters/ch_results.tex](chapters/ch_results.tex) 中引用。
5. SQL、代码等内容放在 `code/` 目录，附录示例见 [appendix/app_code.tex](appendix/app_code.tex)。

## 编译

在 VSCode 中打开本目录，安装 LaTeX Workshop 扩展后按 `Ctrl+Shift+B` 即可编译，输出 `lab_report.pdf`。
也可以直接在命令行执行：

```bash
latexmk -xelatex lab_report.tex
```

模板自带 [.vscode/tasks.json](.vscode/tasks.json)，提供了编译和清理两个任务。
模板同时提供 [latexmkrc](latexmkrc)，默认使用 XeLaTeX 编译。

## 文件结构

| 文件                            | 说明                               |
| ------------------------------- | ---------------------------------- |
| `lab_report.tex`                | 主文件，控制章节顺序               |
| `metadata.tex`                  | 封面信息：课程、实验名称、个人信息 |
| `cover.tex`                     | 封面排版                           |
| `BUPTthesis.cls`                | 文档类，已改为实验报告版式         |
| `cjkfakebold.sty`               | 黑体标题伪粗体支持                 |
| `chapters/ch_intro.tex`         | 实验目的                           |
| `chapters/ch_environment.tex`   | 实验环境                           |
| `chapters/ch_principle.tex`     | 实验原理                           |
| `chapters/ch_procedure.tex`     | 实验内容与步骤                     |
| `chapters/ch_results.tex`       | 实验结果与分析                     |
| `chapters/ch_concln.tex`        | 实验结论与心得                     |
| `appendix/app_code.tex`         | 附录：实验代码                     |
| `code/example.sql`              | 示例 SQL 代码                      |
| `logo/`                         | 封面使用的校名、英文校名与校徽图片 |
| `latexmkrc`                     | latexmk 配置，默认使用 XeLaTeX     |
| `.vscode/tasks.json`            | VSCode 编译和清理任务              |
| `lab_report.pdf`                | 编译输出示例                       |
| `LICENSE`                       | MIT 许可证，保留原作版权声明       |

## 说明

- 编译需要 XeLaTeX，建议使用较新的 TeX Live 或 MiKTeX。
- 数学公式、算法、定理等原模板保留的功能仍然可用。
- 如需关闭黑体标题的伪粗体，可在主文件中将 `xits` 选项后追加 `noboldheiti`。

## 授权

本项目基于 [BUPTBachelorThesis](https://github.com/sheng-qiang/BUPTBachelorThesis)（MIT License，Copyright (c) 2018 sqyx008）改造，保留原作版权声明，并以 [MIT License](LICENSE) 发布，具体条款见 [LICENSE](LICENSE)。
