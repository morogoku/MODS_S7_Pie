.class public final Lcom/android/server/enterprise/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final LVL_DEBUG:I = 0x3

.field public static final LVL_ERROR:I = 0x6

.field public static final LVL_INFO:I = 0x4

.field public static final LVL_SENSITIVE:I = 0x1

.field public static final LVL_VERBOSE:I = 0x2

.field public static final LVL_WARNING:I = 0x5

.field private static mLoggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/log/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addLogger(Lcom/android/server/enterprise/log/Logger;)Z
    .registers 4

    const-class v0, Lcom/android/server/enterprise/log/Log;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    monitor-exit v0

    return v1

    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v1, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    monitor-exit v0

    return v1

    :cond_18
    monitor-exit v0

    return v1

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;
    .registers 6

    const-class v0, Lcom/android/server/enterprise/log/Log;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    monitor-exit v0

    return-object v1

    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/log/Logger;

    iget-object v4, v3, Lcom/android/server/enterprise/log/Logger;->loggerName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    if-eqz v4, :cond_24

    monitor-exit v0

    return-object v3

    :cond_24
    goto :goto_e

    :cond_25
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    move-object v0, p0

    :goto_6
    if-eqz v0, :cond_14

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_f

    const-string v1, ""

    return-object v1

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6

    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public static declared-synchronized removeLogger(Lcom/android/server/enterprise/log/Logger;)Z
    .registers 3

    const-class v0, Lcom/android/server/enterprise/log/Log;

    monitor-enter v0

    if-nez p0, :cond_8

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/Logger;->flush()V

    sget-object v1, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    monitor-exit v0

    return v1

    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public static stringValueOf(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6
    const-string v0, "ERROR"

    return-object v0

    :pswitch_9
    const-string v0, "WARNING"

    return-object v0

    :pswitch_c
    const-string v0, "INFO"

    return-object v0

    :pswitch_f
    const-string v0, "DEBUG"

    return-object v0

    :pswitch_12
    const-string v0, "VERBOSE"

    return-object v0

    :pswitch_15
    const-string v0, "SENSITIVE"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2f
    return-void
.end method
