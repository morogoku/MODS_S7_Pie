.class Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetPoint"
.end annotation


# static fields
.field public static final OFFSET_FIX:I = 0x0

.field public static final OFFSET_SUB:I = 0x2

.field public static final OFFSET_USER:I = 0x1


# instance fields
.field private final BOUNDARY_RATIO:F

.field public mHighBoundary:F

.field public mLowBoundary:F

.field public mLux:F

.field public mOffset:F

.field public final mOffsetType:I

.field public mOrgCd:F

.field final synthetic this$0:Lcom/android/server/display/BrightnessMappingStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessMappingStrategy;FFFI)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->this$0:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->BOUNDARY_RATIO:F

    monitor-enter p0

    :try_start_a
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    div-float v0, p2, p1

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLowBoundary:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mHighBoundary:F

    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    iput p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    if-nez v1, :cond_a

    const-string v1, "F"

    move-object v0, v1

    goto :goto_1f

    :cond_a
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v1, "U"

    move-object v0, v1

    goto :goto_1f

    :cond_13
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    const-string v1, "S"

    move-object v0, v1

    goto :goto_1f

    :cond_1c
    const-string v1, "-"

    move-object v0, v1

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mLux:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOrgCd:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_49

    const-string v2, "+"

    goto :goto_4b

    :cond_49
    const-string v2, ""

    :goto_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$OffsetPoint;->mOffset:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_5f

    throw v0
.end method
