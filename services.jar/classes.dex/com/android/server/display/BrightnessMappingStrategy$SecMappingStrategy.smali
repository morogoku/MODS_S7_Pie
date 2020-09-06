.class Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecMappingStrategy"
.end annotation


# static fields
.field private static final TAG_PAB:Ljava/lang/String; = "[PAB]"


# instance fields
.field private final BASIS_LUX:F

.field private final SIZE_DEFAULT_LIST:I

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutoBrightnessScaleFactorValue:F

.field private final mBrightness:[F

.field private final mLockPAB:Ljava/lang/Object;

.field private final mLux:[F

.field private final mNits:[F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

.field private mOp0LuxChangedByUser:Z

.field private mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

.field private mSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>([F[F[F[I)V
    .registers 12

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->BASIS_LUX:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->SIZE_DEFAULT_LIST:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    array-length v0, p2

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    const-string v3, "Lux and nits arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    const-string v3, "Lux and nits arrays must be the same length!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p3

    if-eqz v0, :cond_35

    array-length v0, p4

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    const-string/jumbo v3, "nitsRange and backlightRange arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p3

    array-length v3, p4

    if-ne v0, v3, :cond_41

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    const-string/jumbo v0, "nitsRange and backlightRange arrays must be the same length!"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p3

    new-array v2, v0, [F

    move v3, v1

    :goto_4c
    if-ge v3, v0, :cond_59

    aget v4, p4, v3

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_59
    invoke-static {p3, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    array-length v3, p1

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNits:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    nop

    :goto_6d
    if-ge v1, v3, :cond_8a

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    aget v5, p1, v1

    aput v5, v4, v1

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNits:[F

    aget v5, p2, v1

    aput v5, v4, v1

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_8a
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    invoke-static {v1, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->init()V

    return-void
.end method

.method private addSubOffsetPointsIfNeededLocked(I)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllSubOffsetPointsLocked()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_7
    const/4 v3, 0x1

    if-ge v0, v3, :cond_18

    if-eqz v2, :cond_18

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->checkReversePointsByUsingAutoBrightnessTableValue(I)I

    move-result v4

    if-lez v4, :cond_13

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    move v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_3e

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]4-[CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FFF)I
    .registers 13

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_f
    if-ltz v1, :cond_45

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v5, :cond_42

    iget v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_42

    const-string v5, "BrightnessMappingStrategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB]1-remove op : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_45
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_70

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]1-remove 0lux offset : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    :cond_70
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB]1-index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v1, p1, v2

    if-nez v1, :cond_c2

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput p3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]1-change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a7

    :cond_c2
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_106

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput p3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]1-change : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a7

    :cond_106
    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v6

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v4, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mHighBoundary:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_147

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v3, :cond_147

    const-string v3, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB]1-remove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_147
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLowBoundary:F

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_180

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-eqz v4, :cond_180

    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB]1-remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_180
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v4, "BrightnessMappingStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB]1-add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a7
    return v0
.end method

.method private checkReversePointsByUsingAutoBrightnessTableValue(I)I
    .registers 30

    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    iget-object v10, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v11, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    iget-object v12, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_12
    move v14, v0

    array-length v0, v10

    const v15, 0x461c4000    # 10000.0f

    if-ge v14, v0, :cond_3c

    aget v0, v10, v14

    cmpl-float v0, v0, v15

    if-ltz v0, :cond_20

    goto :goto_3c

    :cond_20
    new-instance v15, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    aget v2, v10, v14

    aget v0, v10, v14

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    aget v0, v10, v14

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v4

    const/4 v5, 0x2

    move-object v0, v15

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v14, 0x1

    goto :goto_12

    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-direct {v6, v9, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_73

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_73
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_7f
    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_ac

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]Index ERROR : addedIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_ac
    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v14, v0, v1

    iget-object v0, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    move v0, v14

    invoke-direct {v6, v9, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v16, v8

    move v8, v0

    :goto_d6
    move v3, v1

    const/16 v17, 0x2

    if-ltz v3, :cond_229

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v18, v2, v1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    const/4 v5, 0x0

    cmpg-float v19, v18, v5

    if-gez v19, :cond_191

    cmpl-float v5, v0, v5

    if-nez v5, :cond_100

    const/4 v5, 0x0

    goto :goto_102

    :cond_100
    move/from16 v5, v17

    :goto_102
    new-instance v17, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v19

    neg-float v13, v2

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v21, v1

    move-object v1, v6

    move/from16 v22, v2

    move/from16 v2, v20

    move/from16 v23, v3

    move/from16 v3, v19

    move v15, v4

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    move/from16 v13, v20

    invoke-direct {v6, v1, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_185

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13e

    goto :goto_185

    :cond_13e
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17d

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v14, v22

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]4-negative-change : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    :cond_17d
    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2-negative-ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    :cond_185
    :goto_185
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_18a
    add-int/lit8 v16, v16, 0x1

    const/4 v0, 0x0

    nop

    move v8, v0

    goto/16 :goto_221

    :cond_191
    move v13, v0

    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move v15, v4

    cmpl-float v0, v18, v8

    if-ltz v0, :cond_221

    cmpl-float v0, v13, v5

    if-nez v0, :cond_1a3

    const/4 v5, 0x0

    goto :goto_1a5

    :cond_1a3
    move/from16 v5, v17

    :goto_1a5
    new-instance v17, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    sub-float v4, v8, v22

    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {v6, v1, v13}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_21a

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d3

    goto :goto_21a

    :cond_1d3
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_212

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v8, v22

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]4-reverse-change : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21f

    :cond_212
    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2-reverse-ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21f

    :cond_21a
    :goto_21a
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_21f
    add-int/lit8 v16, v16, 0x1

    :cond_221
    :goto_221
    add-int/lit8 v1, v23, -0x1

    move v4, v15

    const v15, 0x461c4000    # 10000.0f

    goto/16 :goto_d6

    :cond_229
    move v15, v4

    invoke-direct {v6, v9, v15}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    :goto_22e
    move v13, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_390

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float v18, v4, v3

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v0, v18, v14

    if-gez v0, :cond_2f3

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v1, v2, v0

    if-nez v1, :cond_25c

    const/4 v5, 0x0

    goto :goto_25e

    :cond_25c
    move/from16 v5, v17

    :goto_25e
    new-instance v19, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v20

    sub-float v21, v14, v4

    move-object/from16 v0, v19

    move-object v1, v6

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v3, v20

    move/from16 v20, v4

    move/from16 v4, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    move/from16 v4, v24

    invoke-direct {v6, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2e4

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_299

    move/from16 v26, v5

    goto :goto_2e6

    :cond_299
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2da

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    sub-float v3, v14, v20

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    const-string v5, "[PAB]4-change : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2eb

    :cond_2da
    move/from16 v26, v5

    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2eb

    :cond_2e4
    move/from16 v26, v5

    :goto_2e6
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2eb
    add-int/lit8 v16, v16, 0x1

    nop

    const v19, 0x461c4000    # 10000.0f

    goto/16 :goto_38a

    :cond_2f3
    move/from16 v25, v3

    move/from16 v20, v4

    move v4, v2

    move/from16 v14, v18

    const v19, 0x461c4000    # 10000.0f

    cmpl-float v0, v4, v19

    if-nez v0, :cond_303

    const/4 v5, 0x0

    goto :goto_305

    :cond_303
    move/from16 v5, v17

    :goto_305
    new-instance v21, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v6, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v4

    move v7, v4

    move/from16 v4, v25

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget-object v1, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {v6, v1, v7}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_381

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_336

    move/from16 v27, v25

    goto :goto_383

    :cond_336
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_377

    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    move/from16 v3, v25

    iput v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const-string v2, "BrightnessMappingStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v3

    const-string v3, "[PAB]4-change : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_388

    :cond_377
    move/from16 v27, v25

    const-string v2, "BrightnessMappingStrategy"

    const-string v3, "[PAB]4-2ERROR."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_388

    :cond_381
    move/from16 v27, v25

    :goto_383
    iget-object v2, v6, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_388
    add-int/lit8 v16, v16, 0x1

    :goto_38a
    add-int/lit8 v0, v13, 0x1

    move/from16 v7, p1

    goto/16 :goto_22e

    :cond_390
    return v16
.end method

.method private getIndex(Ljava/util/ArrayList;F)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_1b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    if-le v0, v2, :cond_1e

    move v0, v2

    :cond_1e
    monitor-exit v1

    return v0

    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private getSlope(FFFF)F
    .registers 11

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_28

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_11

    const p1, 0x3f7fbe77    # 0.999f

    :cond_11
    cmpl-float v1, p3, v1

    if-nez v1, :cond_18

    const p3, 0x3f7fbe77    # 0.999f

    :cond_18
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    :cond_28
    return v0
.end method

.method private getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x6

    if-nez v4, :cond_50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[PAB]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_53
    monitor-exit v0

    return-object v2

    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private init()V
    .registers 15

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v7, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iput-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v10, v2, v3

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]init : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v1
.end method

.method private printOffsetList(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .registers 9

    if-gez p1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]3-[CHECK POINT] ERROR. index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto/16 :goto_108

    :cond_34
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_108

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto/16 :goto_108

    :cond_46
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_e9

    const/high16 v0, 0x41f00000    # 30.0f

    if-eqz p1, :cond_bd

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_92

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_76

    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_bd

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_bd

    :cond_76
    iget v4, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_bd

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_bd

    :cond_92
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    if-nez v4, :cond_9a

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :cond_9a
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_bd

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v6, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    :cond_bd
    :goto_bd
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_d7

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_e8

    :cond_d7
    iget v0, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e2

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_e8

    :cond_e2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :goto_e8
    goto :goto_108

    :cond_e9
    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]3-[CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :cond_108
    :goto_108
    return-void
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)I
    .registers 13

    const/4 v0, 0x0

    if-gez p1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB]2-[CHECK POINT] ERROR. index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1d
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    const/4 v4, 0x1

    if-lez p1, :cond_98

    add-int/lit8 v5, p1, -0x1

    :goto_30
    if-ltz v5, :cond_98

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v7, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v7, v8

    cmpl-float v8, v7, v3

    if-lez v8, :cond_95

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-ne v8, v4, :cond_69

    const-string v8, "BrightnessMappingStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PAB]2-remove : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    :cond_69
    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v8, :cond_76

    iget v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    sub-float v8, v3, v8

    iput v8, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    goto :goto_95

    :cond_76
    const-string v8, "BrightnessMappingStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[PAB]2-remove : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_95
    :goto_95
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    :cond_98
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_9f
    if-le v0, p1, :cond_12b

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v6, v7

    cmpg-float v7, v6, v3

    if-gez v7, :cond_127

    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-ne v7, v4, :cond_d6

    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-remove : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_127

    :cond_d6
    iget v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v7, :cond_108

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_e7

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    goto :goto_127

    :cond_e7
    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-ERROR.  i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", i.offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_127

    :cond_108
    const-string v7, "BrightnessMappingStrategy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PAB]2-remove : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_127
    :goto_127
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9f

    :cond_12b
    return v1
.end method

.method private removeAllSubOffsetPointsLocked()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    return-void
.end method

.method private updateFixOffsetPoints()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_33

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    goto :goto_33

    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v0

    sub-float v1, p2, v0

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllSubOffsetPointsLocked()V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->addToListAfterBoundaryCheckLocked(FFF)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->removeAllReverseUserOffsetPointsLocked(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->refreshFixedOffsetPointsLocked(I)V

    invoke-direct {p0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->addSubOffsetPointsIfNeededLocked(I)V

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->printOffsetList(Ljava/util/ArrayList;)V

    monitor-exit v2

    return-void

    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_30

    throw v3

    :cond_33
    :goto_33
    const-string v0, "BrightnessMappingStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]Do not add Point : lux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "BrightnessMappingStrategy"

    const-string v1, "[PAB]clearUserDataPoints"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :cond_10
    return-void
.end method

.method public convertToNits(I)F
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "SecMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "[PAB]Personal Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB]mOp0LuxChangedByUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getAutoBrightnessScaleFactorValue()F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getBrightness(F)F
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset(F)F
    .registers 13

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_11

    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    goto/16 :goto_f0

    :cond_11
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1b

    monitor-exit v0

    return v1

    :cond_1b
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_34

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_34

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    sub-float p1, v2, v3

    :cond_34
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v2

    if-gtz v2, :cond_60

    const-string v1, "BrightnessMappingStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB]getOffset: index error. index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    monitor-exit v0

    return v1

    :cond_60
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_7a

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    :goto_78
    goto/16 :goto_ed

    :cond_7a
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_95

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_95

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_95

    const/4 v1, 0x0

    goto :goto_78

    :cond_95
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_eb

    cmpl-float v7, v3, v4

    if-nez v7, :cond_ca

    goto :goto_eb

    :cond_ca
    cmpl-float v7, v6, v1

    if-nez v7, :cond_d1

    const v6, 0x3f7fbe77    # 0.999f

    :cond_d1
    cmpl-float v1, p1, v1

    if-nez v1, :cond_d8

    const p1, 0x3f7fbe77    # 0.999f

    :cond_d8
    invoke-direct {p0, v6, v4, v5, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getSlope(FFFF)F

    move-result v1

    float-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v4

    goto :goto_ed

    :cond_eb
    :goto_eb
    move v1, v3

    goto :goto_78

    :goto_ed
    nop

    monitor-exit v0

    return v1

    :goto_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_8 .. :try_end_f1} :catchall_e

    throw v1
.end method

.method public getOrgCd(F)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getPersonalScreenAutoBrightness(F)F
    .registers 8

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_15

    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    goto :goto_37

    :cond_15
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getIndex(Ljava/util/ArrayList;F)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget v3, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOffset(F)F

    move-result v4

    add-float v5, v3, v4

    nop

    monitor-exit v0

    return v5

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_13

    throw v1
.end method

.method public getPersonalizedOffsetList()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_56

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasPersonalizedAutoBrightnessControl()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public isChangedByUser0Lux()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadPoint(Ljava/lang/String;Z)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v9

    if-eqz v8, :cond_10a

    :try_start_9
    const-string v0, ";"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    iget-object v0, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_106

    move/from16 v11, p2

    :try_start_17
    iput-boolean v11, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    const/4 v12, 0x0

    move v0, v12

    :goto_1b
    move v13, v0

    array-length v0, v10

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    if-ge v13, v0, :cond_ab

    aget-object v0, v10, v13

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_10e

    move-object/from16 v17, v0

    :try_start_2e
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    aget-object v1, v17, v12

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aget-object v1, v17, v12

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v4

    aget-object v1, v17, v16

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v1, 0x2

    aget-object v1, v17, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;-><init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V

    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-static {v1, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_68

    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    :cond_68
    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    sub-float/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    :cond_83
    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    cmpl-float v1, v1, v15

    if-gtz v1, :cond_98

    iget v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_92

    goto :goto_98

    :cond_92
    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_97
    goto :goto_a7

    :cond_98
    :goto_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_9b} :catch_9c
    .catchall {:try_start_2e .. :try_end_9b} :catchall_10e

    goto :goto_ab

    :catch_9c
    move-exception v0

    :try_start_9d
    const-string v1, "BrightnessMappingStrategy"

    const-string v2, "[PAB]Failed to load PAC point"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    :goto_a7
    add-int/lit8 v0, v13, 0x1

    goto/16 :goto_1b

    :cond_ab
    :goto_ab
    const/4 v0, 0x0

    iget-object v1, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b4
    if-ltz v1, :cond_e0

    iget-object v2, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v2, :cond_dd

    iget-object v2, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    invoke-static {v2, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, v7, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    move v0, v2

    :cond_dd
    add-int/lit8 v1, v1, -0x1

    goto :goto_b4

    :cond_e0
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v1

    sub-float/2addr v1, v15

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_10c

    const-string v1, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hbm lux change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->resetPersonalAutoBrightness()V

    goto :goto_10c

    :catchall_106
    move-exception v0

    move/from16 v11, p2

    goto :goto_10f

    :cond_10a
    move/from16 v11, p2

    :cond_10c
    :goto_10c
    monitor-exit v9

    return-void

    :catchall_10e
    move-exception v0

    :goto_10f
    monitor-exit v9
    :try_end_110
    .catchall {:try_start_9d .. :try_end_110} :catchall_10e

    throw v0
.end method

.method public resetPersonalAutoBrightness()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0LuxChangedByUser:Z

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    iput v2, v3, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setAutoBrightnessScaleFactor(I)Z
    .registers 8

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    const-string v0, "BrightnessMappingStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoBrightnessScaleFactor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_2a

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_47

    :cond_2a
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_34

    const v0, 0x3c75c28f    # 0.015f

    goto :goto_47

    :cond_34
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v3, 0x55

    if-ne v2, v3, :cond_3e

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_47

    :cond_3e
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_47

    const v0, 0x3b449ba6    # 0.003f

    :cond_47
    :goto_47
    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    nop

    :goto_4f
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    array-length v2, v2

    if-ge v1, v2, :cond_75

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    aget v2, v2, v1

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_61

    goto :goto_75

    :cond_61
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mNits:[F

    aget v4, v4, v1

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mBrightness:[F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->updateFixOffsetPoints()V

    const/4 v1, 0x1

    return v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public updatePacOffset()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mLockPAB:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOp0Lux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->mOpBeforeHbmLux:Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->getOrgCd(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
