.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleChangedHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0xa


# instance fields
.field private final mCallerInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SamsungActivityManagerService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method private addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 9

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    :cond_f
    const-string v2, "%s changed from %s to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;

    invoke-direct {v4, v2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_40

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_40
    return-void
.end method

.method private dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 14

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_a

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-string v0, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, " (nothing) "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_97

    :cond_1e
    const/4 v0, 0x0

    move v1, v0

    :goto_20
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;

    const-string v3, "#%d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " at "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, v2, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    iget-wide v4, v2, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x4

    iget-object v4, v2, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    move v3, v0

    :goto_71
    if-ge v3, v5, :cond_91

    aget-object v7, v4, v3

    if-nez v6, :cond_8c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8e

    :cond_8c
    add-int/lit8 v6, v6, -0x1

    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_91
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_97
    :goto_97
    return-void
.end method

.method private setCallerLocked(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
