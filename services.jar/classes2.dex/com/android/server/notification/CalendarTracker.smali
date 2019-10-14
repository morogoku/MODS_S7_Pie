.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object v0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    :pswitch_18
    const-string v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    :pswitch_1b
    const-string v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    :pswitch_1e
    const-string v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    :pswitch_21
    const-string v0, "ATTENDEE_STATUS_NONE"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    :pswitch_18
    const-string v0, "AVAILABILITY_FREE"

    return-object v0

    :pswitch_1b
    const-string v0, "AVAILABILITY_BUSY"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private getPrimaryCalendars()Landroid/util/ArraySet;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v3, "\"primary\""

    const-string v4, "_id"

    const-string v5, "(account_name=ownerAccount) AS \"primary\""

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v4, "\"primary\" = 1"

    const/4 v5, 0x0

    :try_start_16
    iget-object v6, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "\"primary\" = 1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    :goto_27
    if-eqz v5, :cond_3c

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_61

    goto :goto_27

    :cond_3c
    if-eqz v5, :cond_41

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_41
    sget-boolean v6, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v6, :cond_60

    const-string v6, "ConditionProviders.CT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPrimaryCalendars took "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-object v2

    :catchall_61
    move-exception v6

    if-eqz v5, :cond_67

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v6
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .registers 26

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v10, "event_id = ? AND attendeeEmail = ?"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v12, 0x1

    aput-object v1, v8, v12

    move-object/from16 v13, p0

    iget-object v4, v13, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_fd

    :try_start_29
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_39

    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto/16 :goto_105

    :cond_39
    move v5, v11

    :goto_3a
    if-eqz v4, :cond_c5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_c5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_f3

    move-object/from16 v15, p1

    :try_start_50
    iget v12, v15, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v12, v14}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v12

    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v17, :cond_9b

    const-string v11, "ConditionProviders.CT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_c3

    move-object/from16 v19, v8

    :try_start_63
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "status=%s, meetsReply=%s"
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_94

    move-object/from16 v20, v10

    const/4 v10, 0x2

    :try_start_6e
    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v14}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v13, v18

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v13, v16

    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_6e .. :try_end_8e} :catchall_8f

    goto :goto_a2

    :catchall_8f
    move-exception v0

    move/from16 v8, p2

    goto/16 :goto_139

    :catchall_94
    move-exception v0

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto/16 :goto_139

    :cond_9b
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v18, v11

    move v10, v0

    :goto_a2
    move/from16 v8, p2

    int-to-long v10, v8

    cmp-long v0, v6, v10

    if-nez v0, :cond_b3

    :try_start_a9
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_138

    if-eqz v0, :cond_b3

    if-eqz v12, :cond_b3

    const/4 v0, 0x1

    goto :goto_b5

    :cond_b3
    move/from16 v0, v18

    :goto_b5
    or-int/2addr v5, v0

    nop

    move/from16 v11, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    const/4 v0, 0x2

    const/4 v12, 0x1

    move-object/from16 v13, p0

    goto/16 :goto_3a

    :catchall_c3
    move-exception v0

    goto :goto_f6

    :cond_c5
    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    if-eqz v4, :cond_d2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d2
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_f2

    const-string v0, "ConditionProviders.CT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "meetsAttendee took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    return v5

    :catchall_f3
    move-exception v0

    move-object/from16 v15, p1

    :goto_f6
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    goto :goto_139

    :cond_fd
    move-object/from16 v15, p1

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v8, p2

    :goto_105
    :try_start_105
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_110

    const-string v0, "ConditionProviders.CT"

    const-string v5, "No attendees found"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_105 .. :try_end_110} :catchall_138

    :cond_110
    nop

    if-eqz v4, :cond_116

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_116
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_136

    const-string v0, "ConditionProviders.CT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "meetsAttendee took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    const/4 v0, 0x1

    return v0

    :catchall_138
    move-exception v0

    :goto_139
    if-eqz v4, :cond_13e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_13e
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_15e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "meetsAttendee took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConditionProviders.CT"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    throw v0
.end method

.method private static meetsReply(II)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_1a

    return v0

    :pswitch_6
    if-ne p1, v1, :cond_a

    move v0, v1

    nop

    :cond_a
    return v0

    :pswitch_b
    if-eq p1, v1, :cond_12

    const/4 v2, 0x4

    if-ne p1, v2, :cond_11

    goto :goto_12

    :cond_11
    goto :goto_13

    :cond_12
    :goto_12
    move v0, v1

    :goto_13
    return v0

    :pswitch_14
    const/4 v2, 0x2

    if-eq p1, v2, :cond_19

    move v0, v1

    nop

    :cond_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_35

    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_35
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_5a

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_8f

    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_79

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8f
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .registers 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v6, 0x5265c00

    add-long v8, v3, v6

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v15, "begin ASC"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v8

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v10, v0

    add-long/2addr v6, v3

    iput-wide v6, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    :try_start_35
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_233
    .catchall {:try_start_35 .. :try_end_39} :catchall_22b

    :goto_39
    if-eqz v9, :cond_219

    :try_start_3b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_219

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v7, 0x1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x2

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x3

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_59

    move v6, v7

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    :goto_5a
    const/4 v15, 0x4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v21, v20

    const/4 v15, 0x5

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    const/4 v15, 0x6

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v23, v20

    const/4 v15, 0x7

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v26, v24

    const/16 v15, 0x8

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_7c} :catch_211
    .catchall {:try_start_3b .. :try_end_7c} :catchall_209

    move/from16 v28, v20

    move-object/from16 v29, v8

    move-wide/from16 v7, v26

    :try_start_82
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    sget-boolean v20, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8c} :catch_203
    .catchall {:try_start_82 .. :try_end_8c} :catchall_1fd

    if-eqz v20, :cond_12a

    move-object/from16 v30, v0

    :try_start_90
    const-string v0, "ConditionProviders.CT"
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_92} :catch_123
    .catchall {:try_start_90 .. :try_end_92} :catchall_11c

    move-object/from16 v31, v5

    :try_start_94
    const-string v5, "%s %s-%s v=%s a=%s eid=%s n=%s o=%s cid=%s p=%s"
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_96} :catch_117
    .catchall {:try_start_94 .. :try_end_96} :catchall_112

    move-object/from16 v32, v9

    const/16 v9, 0xa

    :try_start_9a
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v16, v9, v18
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a0} :catch_10c
    .catchall {:try_start_9a .. :try_end_a0} :catchall_106

    move-object/from16 v33, v10

    :try_start_a2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    const/16 v20, 0x1

    aput-object v10, v9, v20

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v13, v14}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x2

    aput-object v10, v9, v17

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v17, 0x3

    aput-object v10, v9, v17

    move/from16 v10, v28

    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x4

    aput-object v17, v9, v19

    move/from16 v1, v21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x5

    aput-object v17, v9, v19

    move/from16 v34, v1

    move-object/from16 v1, v22

    const/16 v17, 0x6

    aput-object v1, v9, v17

    move/from16 v35, v10

    move-object/from16 v10, v23

    const/16 v17, 0x7

    aput-object v10, v9, v17

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v19, 0x8

    aput-object v17, v9, v19

    const/16 v17, 0x9

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v9, v17

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    :catchall_f8
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    goto/16 :goto_248

    :catch_ff
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    goto/16 :goto_23a

    :catchall_106
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v32

    goto/16 :goto_248

    :catch_10c
    move-exception v0

    move-object v1, v10

    move-object/from16 v2, v32

    goto/16 :goto_23a

    :catchall_112
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_248

    :catch_117
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_23a

    :catchall_11c
    move-exception v0

    move-object/from16 v31, v5

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_248

    :catch_123
    move-exception v0

    move-object/from16 v31, v5

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_23a

    :cond_12a
    move-object/from16 v30, v0

    move-object/from16 v31, v5

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move/from16 v34, v21

    move-object/from16 v1, v22

    move-object/from16 v10, v23

    move/from16 v35, v28

    const/16 v18, 0x0

    :goto_13c
    cmp-long v0, v3, v11

    if-ltz v0, :cond_146

    cmp-long v0, v3, v13

    if-gez v0, :cond_146

    const/4 v0, 0x1

    goto :goto_148

    :cond_146
    move/from16 v0, v18

    :goto_148
    if-eqz v6, :cond_162

    if-eqz v15, :cond_162

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v5, :cond_160

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_160

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_15e} :catch_ff
    .catchall {:try_start_a2 .. :try_end_15e} :catchall_f8

    if-eqz v5, :cond_162

    :cond_160
    const/4 v5, 0x1

    goto :goto_164

    :cond_162
    move/from16 v5, v18

    :goto_164
    move-object/from16 v36, v1

    move/from16 v9, v35

    const/4 v1, 0x1

    if-eq v9, v1, :cond_16e

    const/16 v18, 0x1

    nop

    :cond_16e
    move/from16 v1, v18

    if-eqz v5, :cond_1ec

    if-eqz v1, :cond_1ec

    :try_start_174
    sget-boolean v17, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_176} :catch_1e5
    .catchall {:try_start_174 .. :try_end_176} :catchall_1de

    if-eqz v17, :cond_184

    move/from16 v37, v1

    :try_start_17a
    const-string v1, "ConditionProviders.CT"

    move/from16 v38, v5

    const-string v5, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_183} :catch_ff
    .catchall {:try_start_17a .. :try_end_183} :catchall_f8

    goto :goto_188

    :cond_184
    move/from16 v37, v1

    move/from16 v38, v5

    :goto_188
    move/from16 v5, v34

    move-object/from16 v1, p0

    :try_start_18c
    invoke-direct {v1, v2, v5, v10}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1ec

    sget-boolean v18, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_194} :catch_1e5
    .catchall {:try_start_18c .. :try_end_194} :catchall_1de

    if-eqz v18, :cond_19d

    :try_start_196
    const-string v1, "ConditionProviders.CT"

    const-string v2, "    MEETS ATTENDEE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_19d} :catch_ff
    .catchall {:try_start_196 .. :try_end_19d} :catchall_f8

    :cond_19d
    if-eqz v0, :cond_1b0

    :try_start_19f
    sget-boolean v1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a1} :catch_1e5
    .catchall {:try_start_19f .. :try_end_1a1} :catchall_1de

    if-eqz v1, :cond_1aa

    :try_start_1a3
    const-string v1, "ConditionProviders.CT"

    const-string v2, "      MEETS TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1aa} :catch_ff
    .catchall {:try_start_1a3 .. :try_end_1aa} :catchall_f8

    :cond_1aa
    move-object/from16 v1, v33

    const/4 v2, 0x1

    :try_start_1ad
    iput-boolean v2, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    goto :goto_1b2

    :cond_1b0
    move-object/from16 v1, v33

    :goto_1b2
    cmp-long v2, v11, v3

    if-lez v2, :cond_1cd

    move/from16 v40, v5

    move/from16 v39, v6

    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v11, v5

    if-gez v2, :cond_1d1

    iput-wide v11, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_1ee

    :catchall_1c3
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_248

    :catch_1c8
    move-exception v0

    move-object/from16 v2, v32

    goto/16 :goto_23a

    :cond_1cd
    move/from16 v40, v5

    move/from16 v39, v6

    :cond_1d1
    cmp-long v2, v13, v3

    if-lez v2, :cond_1ee

    iget-wide v5, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v13, v5

    if-gez v2, :cond_1ee

    iput-wide v13, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1dd} :catch_1c8
    .catchall {:try_start_1ad .. :try_end_1dd} :catchall_1c3

    goto :goto_1ee

    :catchall_1de
    move-exception v0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    goto/16 :goto_248

    :catch_1e5
    move-exception v0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    goto/16 :goto_23a

    :cond_1ec
    move-object/from16 v1, v33

    :cond_1ee
    :goto_1ee
    move-object v10, v1

    move-object/from16 v8, v29

    move-object/from16 v0, v30

    move-object/from16 v5, v31

    move-object/from16 v9, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_39

    :catchall_1fd
    move-exception v0

    move-object/from16 v31, v5

    move-object v1, v10

    move-object v2, v9

    goto :goto_248

    :catch_203
    move-exception v0

    move-object/from16 v31, v5

    move-object v1, v10

    move-object v2, v9

    goto :goto_23a

    :catchall_209
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v1, v10

    move-object v2, v9

    goto :goto_248

    :catch_211
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v1, v10

    move-object v2, v9

    goto :goto_23a

    :cond_219
    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    move-object v1, v10

    if-eqz v32, :cond_228

    move-object/from16 v2, v32

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_22a

    :cond_228
    move-object/from16 v2, v32

    :goto_22a
    goto :goto_246

    :catchall_22b
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v2, v9

    move-object v1, v10

    goto :goto_248

    :catch_233
    move-exception v0

    move-object/from16 v31, v5

    move-object/from16 v29, v8

    move-object v2, v9

    move-object v1, v10

    :goto_23a
    :try_start_23a
    const-string v5, "ConditionProviders.CT"

    const-string v6, "error reading calendar"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_241
    .catchall {:try_start_23a .. :try_end_241} :catchall_247

    if-eqz v2, :cond_246

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_246
    :goto_246
    return-object v1

    :catchall_247
    move-exception v0

    :goto_248
    if-eqz v2, :cond_24d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_24d
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    return-void
.end method
