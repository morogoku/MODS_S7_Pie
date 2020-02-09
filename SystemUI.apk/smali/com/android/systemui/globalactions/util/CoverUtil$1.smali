.class Lcom/android/systemui/globalactions/util/CoverUtil$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "CoverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/util/CoverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/util/CoverUtil;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/util/CoverUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/CoverUtil$1;->this$0:Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil$1;->this$0:Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-static {v0}, Lcom/android/systemui/globalactions/util/CoverUtil;->access$000(Lcom/android/systemui/globalactions/util/CoverUtil;)Lcom/samsung/android/globalactions/util/LogWrapper;

    move-result-object v0

    const-string v1, "CoverUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil$1;->this$0:Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-static {v0}, Lcom/android/systemui/globalactions/util/CoverUtil;->access$100(Lcom/android/systemui/globalactions/util/CoverUtil;)Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/CoverUtil$1;->this$0:Lcom/android/systemui/globalactions/util/CoverUtil;

    invoke-static {v0}, Lcom/android/systemui/globalactions/util/CoverUtil;->access$100(Lcom/android/systemui/globalactions/util/CoverUtil;)Lcom/samsung/android/globalactions/util/ClearCoverStateListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ClearCoverStateListener;->onStateChanged(Z)V

    :cond_0
    return-void
.end method
