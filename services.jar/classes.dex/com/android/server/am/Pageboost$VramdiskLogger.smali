.class final Lcom/android/server/am/Pageboost$VramdiskLogger;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskLogger"
.end annotation


# static fields
.field private static final NUM_ENTRY:I = 0x7d0

.field private static array:[Ljava/lang/String;

.field private static cur_idx:I

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    const/16 v0, 0x7d0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost$VramdiskLogger;->getNextIdx()I

    move-result v4

    aput-object v2, v3, v4

    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private static getNextIdx()I
    .registers 2

    sget v0, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->cur_idx:I

    rem-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method public static print()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    sget-object v1, Lcom/android/server/am/Pageboost$VramdiskLogger;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_3b

    :try_start_a
    sget-object v3, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/Pageboost$VramdiskLogger;->array:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catchall_39
    move-exception v2

    goto :goto_3d

    :cond_3b
    monitor-exit v1

    return-object v0

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_39

    throw v2
.end method
