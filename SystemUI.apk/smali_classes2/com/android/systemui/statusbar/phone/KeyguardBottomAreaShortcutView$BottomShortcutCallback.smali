.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaShortcutView.java"

# interfaces
.implements Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomShortcutCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$updateShortcutIconOnly$1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateShortcutView$0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordance()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setIsShortcutForCamera(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setIsShortcutForCamera(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public updateShortcutIconOnly(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaShortcutView$BottomShortcutCallback$a2XEULE-XhcI3Hwo9_wJpXg2vVM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaShortcutView$BottomShortcutCallback$a2XEULE-XhcI3Hwo9_wJpXg2vVM;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShortcutView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaShortcutView$BottomShortcutCallback$FEEFSICn6rQxVwbeMcUzeiaIAdo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaShortcutView$BottomShortcutCallback$FEEFSICn6rQxVwbeMcUzeiaIAdo;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/util/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1102(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    :cond_1
    return-void
.end method
