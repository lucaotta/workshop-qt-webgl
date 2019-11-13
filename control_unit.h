#ifndef CONTROL_UNIT_H
#define CONTROL_UNIT_H

#include <QObject>

class ControlUnit : public QObject {
    Q_OBJECT

    Q_PROPERTY(float speed MEMBER m_speed NOTIFY speedChanged)
    Q_PROPERTY(float battery MEMBER m_battery NOTIFY batteryChanged)

public:
    explicit ControlUnit(QObject* parent = nullptr);

    void timerEvent(QTimerEvent* event) override;

signals:
    void speedChanged(float speed);
    void batteryChanged(float battery);

public slots:

private:
    float m_speed;
    float m_incr_speed;

    float m_battery;
};

#endif // ENGINE_H
