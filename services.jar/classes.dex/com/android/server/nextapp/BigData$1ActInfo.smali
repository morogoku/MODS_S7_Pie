.class Lcom/android/server/nextapp/BigData$1ActInfo;
.super Ljava/lang/Object;
.source "BigDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/nextapp/BigData;->getBigData()Lcom/android/server/nextapp/BigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActInfo"
.end annotation


# instance fields
.field public apk_version:Ljava/lang/String;

.field public cnt:I

.field public hit_consume_time:I

.field public nohit_consume_time:I

.field public predict_time:I

.field public preloadCnt:I

.field public successCnt:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->apk_version:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->predict_time:I

    iput p4, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->successCnt:I

    iput p5, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->preloadCnt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->cnt:I

    const/4 v1, 0x0

    if-ne p5, v0, :cond_16

    iput p3, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->hit_consume_time:I

    iput v1, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->nohit_consume_time:I

    goto :goto_1a

    :cond_16
    iput v1, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->hit_consume_time:I

    iput p3, p0, Lcom/android/server/nextapp/BigData$1ActInfo;->nohit_consume_time:I

    :goto_1a
    return-void
.end method
