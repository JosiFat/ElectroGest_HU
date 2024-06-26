Feature: HU-019 - Como usuario, quiero sincronizar mis datos de sueño con mi calendario para gestionar mejor mi tiempo y actividades en base a mi descanso.

Scenario: ES01 - Sincronización automática de datos de sueño con el calendario
TA01
Given que el [usuario] ha habilitado la [función de sincronización] con el [calendario] en la [aplicación]
And la [aplicación] registra [datos de sueño] del [usuario]
When la [aplicación] registra [datos de sueño]
Then la [aplicación] sincroniza automáticamente los [datos de sueño] con el [calendario del usuario], asignando eventos de "[sueño]" en las horas registradas como [período de descanso].

Examples:
| usuario  | función de sincronización | calendario            | datos de sueño          | período de descanso     |
| Jhosep   | habilitada                | Google Calendar       | 2023-06-21 23:00 - 07:00| 23:00 - 07:00           |
| Fátima   | habilitada                | Microsoft Outlook     | 2023-06-22 22:30 - 06:30| 22:30 - 06:30           |