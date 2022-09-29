#include "combinacionoperaciones.h"
#include "ui_combinacionoperaciones.h"

CombinacionOperaciones::CombinacionOperaciones(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::CombinacionOperaciones)
{
    ui->setupUi(this);
}

CombinacionOperaciones::~CombinacionOperaciones()
{
    delete ui;
}
