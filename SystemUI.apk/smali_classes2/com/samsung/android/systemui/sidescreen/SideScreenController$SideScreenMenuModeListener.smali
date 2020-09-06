.class Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;
.super Ljava/lang/Object;
.source "SideScreenController.java"

# interfaces
.implements Lcom/samsung/android/systemui/sidescreen/ISideScreenMenuModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SideScreenMenuModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;


# direct methods
.method public static synthetic lambda$onSideScreenMenuModeChanged$0(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$900(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$1000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$1100(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenStackDivider;->onModeChanged(I)V

    return-void
.end method


# virtual methods
.method public onSideScreenMenuModeChanged(II)V
    .locals 3

    const-string v0, "SideScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSideScreenMenuModeChanged : windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->menuModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
