#include "mainwindow.h"

#include <QApplication>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setWindowTitle("Image explorer");
    w.setWindowIcon(QIcon("../Lab_2/folder_icon.png"));
    w.show();
    return a.exec();
}
