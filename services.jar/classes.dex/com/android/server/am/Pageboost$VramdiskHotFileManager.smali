.class final Lcom/android/server/am/Pageboost$VramdiskHotFileManager;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskHotFileManager"
.end annotation


# static fields
.field private static ENABLED:Z

.field private static MAX_QUOTA:J

.field private static mCorrectness:Z

.field private static mFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.pageboost.vramdisk.hotfile.enabled"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->ENABLED:Z

    const-wide/32 v0, 0x10000000

    sput-wide v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->MAX_QUOTA:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mFiles:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mCorrectness:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->ENABLED:Z

    return v0
.end method

.method public static gatherFiles(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p0, :cond_8

    return-void

    :cond_8
    sput-object p0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mFiles:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mCorrectness:Z

    return-void
.end method

.method public static lock()V
    .registers 8

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mCorrectness:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file mlock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_57

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/Pageboost$VramdiskdProxy;->executeCmd(ILjava/lang/String;)V

    :cond_57
    goto :goto_b

    :cond_58
    return-void
.end method

.method public static unlock()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/Pageboost$VramdiskHotFileManager;->mCorrectness:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x4

    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$VramdiskdProxy;->executeCmd(ILjava/lang/String;)V

    return-void
.end method
