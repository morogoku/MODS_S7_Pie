.class Lcom/android/systemui/qs/customize/SecQSCustomizer$8;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCustomizerAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllPage()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    return-void
.end method

.method public showCustomizerAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsOpening:Z

    return-void
.end method
