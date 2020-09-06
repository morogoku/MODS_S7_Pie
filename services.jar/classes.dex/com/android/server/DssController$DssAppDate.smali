.class Lcom/android/server/DssController$DssAppDate;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DssAppDate"
.end annotation


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F

.field final synthetic this$0:Lcom/android/server/DssController;


# direct methods
.method constructor <init>(Lcom/android/server/DssController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DssController$DssAppDate;->this$0:Lcom/android/server/DssController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method


# virtual methods
.method addPackage(F)V
    .registers 3

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method

.method addPackage(FI)V
    .registers 3

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    iput p2, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    return-void
.end method

.method addPackage(FLjava/lang/String;)V
    .registers 5

    iput p1, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method
