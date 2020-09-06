.class Lcom/android/server/desktopmode/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    }
.end annotation


# static fields
.field private static CAPACITY_LOG:I

.field private static CAPACITY_STATE:I

.field private static sFormatter:Ljava/time/format/DateTimeFormatter;

.field private static sSavedLogs:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/desktopmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSavedStates:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/desktopmode/Log$EvictingArrayQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x12c

    goto :goto_9

    :cond_7
    const/16 v0, 0xc8

    :goto_9
    sput v0, Lcom/android/server/desktopmode/Log;->CAPACITY_LOG:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/desktopmode/Log;->CAPACITY_STATE:I

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/desktopmode/Log;->CAPACITY_LOG:I

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/desktopmode/Log;->sSavedLogs:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    new-instance v0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    sget v1, Lcom/android/server/desktopmode/Log;->CAPACITY_STATE:I

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/desktopmode/Log;->sSavedStates:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustTab(I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_d

    move-object v1, v0

    goto :goto_1e

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    return-object v1
.end method

.method private static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/server/desktopmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Log;->adjustTab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Log;->adjustTab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Log;->adjustTab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x44

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x44

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "=========================================================================="

    const-string v1, "[DMS]StateStart"

    const/16 v2, 0x56

    invoke-static {v2, v1, v0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/desktopmode/Log;->sSavedStates:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]StateEnd"

    invoke-static {v2, v1, v0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "[DMS]SavedLogsStart"

    invoke-static {v2, v1, v0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/desktopmode/Log;->sSavedLogs:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-virtual {v1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "[DMS]SavedLogsEnd"

    invoke-static {v2, v1, v0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x49

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static save(CLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/desktopmode/Log;->sSavedLogs:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method static saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    .registers 6

    sget-object v0, Lcom/android/server/desktopmode/Log;->sSavedStates:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    const-string v1, "[DMS]State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(enter) State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x57

    invoke-static {v3, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method static saveState(Lcom/android/server/desktopmode/State;ZZ)V
    .registers 7

    sget-object v0, Lcom/android/server/desktopmode/Log;->sSavedStates:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    const-string v1, "[DMS]State"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string/jumbo v3, "enter"

    goto :goto_17

    :cond_14
    const-string/jumbo v3, "exit"

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1f

    const-string v3, ", successful)"

    goto :goto_21

    :cond_1f
    const-string v3, ")"

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v3, v1, v2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x56

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x56

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/16 v0, 0x57

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
