#include "permutacionoperaciones.h"
#include "ui_permutacionoperaciones.h"

PermutacionOperaciones::PermutacionOperaciones(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::PermutacionOperaciones)
{
    ui->setupUi(this);
}

PermutacionOperaciones::~PermutacionOperaciones()
{
    delete ui;
}
