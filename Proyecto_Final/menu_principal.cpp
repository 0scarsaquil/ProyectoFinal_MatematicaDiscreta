#include "menu_principal.h"
#include "ui_menu_principal.h"
#include "combinacionoperaciones.h"
#include "permutacionoperaciones.h"

Menu_principal::Menu_principal(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::Menu_principal)
{
    ui->setupUi(this);
}

Menu_principal::~Menu_principal()
{
    delete ui;
}


void Menu_principal::on_pushButton_clicked()
{
    CombinacionOperaciones combinaciones;
    combinaciones.setModal(true);
    combinaciones.exec();
}


void Menu_principal::on_pushButton_2_clicked()
{
    PermutacionOperaciones permutaciones;
    permutaciones.setModal(true);
    permutaciones.exec();
}


void Menu_principal::on_pushButton_3_clicked()
{
    close();
}

