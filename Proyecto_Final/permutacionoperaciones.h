#ifndef PERMUTACIONOPERACIONES_H
#define PERMUTACIONOPERACIONES_H

#include <QDialog>

namespace Ui {
class PermutacionOperaciones;
}

class PermutacionOperaciones : public QDialog
{
    Q_OBJECT

public:
    explicit PermutacionOperaciones(QWidget *parent = nullptr);
    ~PermutacionOperaciones();

private:
    Ui::PermutacionOperaciones *ui;
};

#endif // PERMUTACIONOPERACIONES_H
