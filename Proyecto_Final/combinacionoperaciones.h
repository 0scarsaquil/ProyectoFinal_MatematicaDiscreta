#ifndef COMBINACIONOPERACIONES_H
#define COMBINACIONOPERACIONES_H

#include <QDialog>

namespace Ui {
class CombinacionOperaciones;
}

class CombinacionOperaciones : public QDialog
{
    Q_OBJECT

public:
    explicit CombinacionOperaciones(QWidget *parent = nullptr);
    ~CombinacionOperaciones();

private:
    Ui::CombinacionOperaciones *ui;
};

#endif // COMBINACIONOPERACIONES_H
