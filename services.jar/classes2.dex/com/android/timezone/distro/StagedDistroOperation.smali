.class public Lcom/android/timezone/distro/StagedDistroOperation;
.super Ljava/lang/Object;
.source "StagedDistroOperation.java"


# static fields
.field private static final UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;


# instance fields
.field public final distroVersion:Lcom/android/timezone/distro/DistroVersion;

.field public final isUninstall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    sput-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-void
.end method

.method private constructor <init>(ZLcom/android/timezone/distro/DistroVersion;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iput-object p2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    return-void
.end method

.method public static install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 3

    if-eqz p0, :cond_9

    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "distroVersion==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uninstall()Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 1

    sget-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/timezone/distro/StagedDistroOperation;

    iget-boolean v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iget-boolean v4, v2, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    iget-object v3, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v3, :cond_29

    iget-object v0, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    iget-object v1, v2, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v0, v1}, Lcom/android/timezone/distro/DistroVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2f

    :cond_29
    iget-object v3, v2, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v2}, Lcom/android/timezone/distro/DistroVersion;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StagedDistroOperation{isUninstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", distroVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
