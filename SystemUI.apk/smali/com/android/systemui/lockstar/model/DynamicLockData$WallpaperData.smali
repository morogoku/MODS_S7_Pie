.class public Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperData"
.end annotation


# instance fields
.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field mUpdateStyle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_style"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->clone()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    nop

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateStyle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    return-object v0
.end method
