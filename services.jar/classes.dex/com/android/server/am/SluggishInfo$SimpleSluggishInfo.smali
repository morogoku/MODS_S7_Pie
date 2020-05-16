.class public Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSluggishInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDha:[I

.field mMeminfo:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    # getter for: Lcom/android/server/am/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    # invokes: Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[J
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$600()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    # invokes: Lcom/android/server/am/SluggishInfo;->getCurrentSimpleDHAStat()[I
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$700()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method

.method constructor <init>(JJJII)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    # getter for: Lcom/android/server/am/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v2, 0x1

    aput-wide p3, v0, v2

    const/4 v3, 0x2

    aput-wide p5, v0, v3

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    new-array v0, v3, [I

    aput p7, v0, v1

    aput p8, v0, v2

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 10

    # getter for: Lcom/android/server/am/SluggishInfo;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    array-length v3, v1

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2f

    aget-wide v5, v1, v4

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x400

    div-long v7, v5, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    array-length v3, v1

    :goto_36
    if-ge v2, v3, :cond_45

    aget v4, v1, v2

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v1, "null"

    :cond_5c
    return-object v1
.end method
