.class Lcom/android/server/sepunion/cover/LedCoverController$1;
.super Ljava/lang/Object;
.source "LedCoverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/LedCoverController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/cover/LedCoverController$1;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController$1;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/LedCoverController;->mCoverColor:I
    invoke-static {v1}, Lcom/android/server/sepunion/cover/LedCoverController;->access$400(Lcom/android/server/sepunion/cover/LedCoverController;)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/LedCoverController$1;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/android/server/sepunion/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    return-void
.end method
