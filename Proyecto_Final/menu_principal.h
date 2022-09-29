#ifndef MENU_PRINCIPAL_H
#define MENU_PRINCIPAL_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class Menu_principal; }
QT_END_NAMESPACE

class Menu_principal : public QMainWindow
{
    Q_OBJECT

public:
    Menu_principal(QWidget *parent = nullptr);
    ~Menu_principal();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

    void on_pushButton_3_clicked();

private:
    Ui::Menu_principal *ui;
};
#endif // MENU_PRINCIPAL_H
