.class public Lcom/android/server/notification/ScheduleConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "ScheduleConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field public static final COMPONENT:Landroid/content/ComponentName;

.field static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SCP_SETTING:Ljava/lang/String; = "snoozed_schedule_condition_provider"

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ConditionProviders.SCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mNextAlarmTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSnoozedForAlarm:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/ScheduleCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    const-class v0, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    iput-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/notification/ScheduleConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ScheduleConditionProvider$1;-><init>(Lcom/android/server/notification/ScheduleConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_3c

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method private conditionSnoozed(Landroid/net/Uri;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;
    .registers 16

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCondition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string v0, "..."

    const-string v1, "..."

    const-string v2, "..."

    new-instance v11, Landroid/service/notification/Condition;

    const-string v5, "..."

    const-string v6, "..."

    const-string v7, "..."

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v3, v11

    move-object v4, p1

    move v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v11
.end method

.method private evaluateSubscriptions()V
    .registers 16

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    invoke-virtual {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->getNextAlarm()J

    move-result-wide v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v12

    :try_start_24
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->setRegistered(Z)V

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_39
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v14, v1

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    move-object v1, p0

    move-object v2, v14

    move-wide v4, v8

    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    goto :goto_39

    :cond_5d
    monitor-exit v12
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_73

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/notification/Condition;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/Condition;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyConditions([Landroid/service/notification/Condition;)V

    iget-wide v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    invoke-direct {p0, v8, v9, v1, v2}, Lcom/android/server/notification/ScheduleConditionProvider;->updateAlarm(JJ)V

    return-void

    :catchall_73
    move-exception v1

    :try_start_74
    monitor-exit v12
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v1
.end method

.method private meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2, p3}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private readSnoozed()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4b

    :try_start_7
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "snoozed_schedule_condition_provider"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_21
    array-length v6, v4

    if-ge v5, v6, :cond_40

    aget-object v6, v4, v5

    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    :cond_2d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_3d

    :cond_34
    iget-object v7, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_46

    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_40
    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_46
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private removeSnoozed(Landroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private saveSnoozedLocked()V
    .registers 5

    const-string v0, ";"

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "snoozed_schedule_condition_provider"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setRegistered(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRegistered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput-boolean p1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    if-eqz v0, :cond_45

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4a

    :cond_45
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_4a
    return-void
.end method

.method private updateAlarm(JJ)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/ScheduleConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v2, p3, p1

    if-lez v2, :cond_5a

    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_56

    const-string v2, "ConditionProviders.SCP"

    const-string v5, "Scheduling evaluate for %s, in %s, now=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    sub-long v7, p3, p1

    invoke-static {v7, v8}, Lcom/android/server/notification/ScheduleConditionProvider;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    invoke-virtual {v0, v4, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_65

    :cond_5a
    sget-boolean v2, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_65

    const-string v2, "ConditionProviders.SCP"

    const-string v3, "Not scheduling evaluate"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method addSnoozed(Landroid/net/Uri;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->saveSnoozedLocked()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 12

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_2f
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "        "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {p0, v3, v7, v8}, Lcom/android/server/notification/ScheduleConditionProvider;->meetsSchedule(Landroid/service/notification/ScheduleCalendar;J)Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "* "

    goto :goto_5d

    :cond_5b
    const-string v3, "  "

    :goto_5d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "            "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ScheduleCalendar;

    invoke-virtual {v3}, Landroid/service/notification/ScheduleCalendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39

    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_2f .. :try_end_79} :catchall_9f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      snoozed due to alarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object v2, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSnoozedForAlarm:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mNextAlarmTime"

    iget-wide v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    move-object v1, p1

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ScheduleConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    return-void

    :catchall_9f
    move-exception v1

    :try_start_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method evaluateSubscriptionLocked(Landroid/net/Uri;Landroid/service/notification/ScheduleCalendar;JJ)Landroid/service/notification/Condition;
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSubscriptions"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    const-string v0, "ConditionProviders.SCP"

    const-string v4, "evaluateSubscriptionLocked cal=%s, now=%s, nextUserAlarmTime=%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-static {p3, p4}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-static {p5, p6}, Lcom/android/server/notification/ScheduleConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-nez p2, :cond_2f

    const-string v0, "!invalidId"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    return-object v0

    :cond_2f
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->conditionSnoozed(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "snoozed"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    :goto_42
    goto :goto_64

    :cond_43
    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "alarmCanceled"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->addSnoozed(Landroid/net/Uri;)V

    goto :goto_64

    :cond_53
    const-string/jumbo v0, "meetsSchedule"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_42

    :cond_5b
    const-string v0, "!meetsSchedule"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    :goto_64
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    invoke-virtual {p2, p3, p4}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_83

    cmp-long v5, v1, p3

    if-lez v5, :cond_83

    iget-wide v5, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_81

    iget-wide v3, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_83

    :cond_81
    iput-wide v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mNextAlarmTime:J

    :cond_83
    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    sget-object v0, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNextAlarm()J
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x0

    :goto_13
    return-wide v1
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .registers 3

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .registers 1

    return-void
.end method

.method public onConnected()V
    .registers 3

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->readSnoozed()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ConditionProviders.SCP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mConnected:Z

    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    const-string v1, "invalidId"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/ScheduleConditionProvider;->createCondition(Landroid/net/Uri;ILjava/lang/String;)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ScheduleConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_2f
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3d

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ConditionProviders.SCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_1e
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    invoke-direct {p0, p1}, Lcom/android/server/notification/ScheduleConditionProvider;->removeSnoozed(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->evaluateSubscriptions()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
