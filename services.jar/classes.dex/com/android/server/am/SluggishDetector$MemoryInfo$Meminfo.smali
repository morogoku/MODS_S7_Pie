.class final Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$MemoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Meminfo"
.end annotation


# static fields
.field private static final MEMINFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mShmem:J

.field private mSlab:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishDetector$MemoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;-><init>()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->refresh()V

    return-void
.end method

.method private refresh()V
    .registers 10

    const-string v0, "/proc/meminfo"

    # invokes: Lcom/android/server/am/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/SluggishDetector;->access$5200(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_68

    aget-object v3, v0, v2

    const-string v4, "Shmem:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x400

    if-eqz v4, :cond_3b

    const-string v4, "Shmem:"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "kB"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :try_start_2d
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    iget-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    div-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v5

    :goto_3a
    goto :goto_65

    :cond_3b
    const-string v4, "Slab:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    const-string v4, "Slab:"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "kB"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :try_start_58
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    iget-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    div-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v5

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_68
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mShmem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->mSlab:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
