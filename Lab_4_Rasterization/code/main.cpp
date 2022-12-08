#include "mainwindow.h"

#include <QApplication>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setWindowTitle("Rasterization");
    w.setWindowIcon(QIcon("../Lab4/icon.png"));
    w.show();
    return a.exec();
}
