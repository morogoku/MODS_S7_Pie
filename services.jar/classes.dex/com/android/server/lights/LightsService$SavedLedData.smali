.class Lcom/android/server/lights/LightsService$SavedLedData;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedLedData"
.end annotation


# instance fields
.field mColor:I

.field mCount:I

.field mMode:I

.field mOffMs:I

.field mOnMs:I

.field mSaved:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    return-void
.end method


# virtual methods
.method initData()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    iput v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iput v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iput v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    return-void
.end method

.method update(IIIII)V
    .registers 7

    iget v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    if-ne v0, p1, :cond_14

    iget v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    if-ne v0, p2, :cond_14

    iget v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    if-ne v0, p3, :cond_14

    iget v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    if-ne v0, p4, :cond_14

    iget v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    if-eq v0, p5, :cond_21

    :cond_14
    iput p1, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mColor:I

    iput p2, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mMode:I

    iput p3, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOnMs:I

    iput p4, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mOffMs:I

    iput p5, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$SavedLedData;->mSaved:Z

    :cond_21
    return-void
.end method
