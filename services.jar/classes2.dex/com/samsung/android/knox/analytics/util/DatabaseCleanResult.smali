.class public Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
.super Ljava/lang/Object;
.source "DatabaseCleanResult.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeletedEventsCount:J

.field private mDeletedSizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->mDeletedSizeBytes:J

    iput-wide p3, p0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->mDeletedEventsCount:J

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .registers 6

    const-string v0, "deletedSizeBytes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "deletedEventsCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_23

    :cond_11
    new-instance v0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    const-string v1, "deletedSizeBytes"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "deletedEventsCount"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;-><init>(JJ)V

    return-object v0

    :cond_23
    :goto_23
    sget-object v0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->TAG:Ljava/lang/String;

    const-string v1, "fromBundle(): invalid bundle."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDeletedEventsCount()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->mDeletedEventsCount:J

    return-wide v0
.end method

.method public getDeletedSizeBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->mDeletedSizeBytes:J

    return-wide v0
.end method
