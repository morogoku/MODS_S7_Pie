.class Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;
.super Ljava/lang/Object;
.source "NavBarFragmentFeature.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;IILcom/android/systemui/statusbar/phone/StatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

.field final synthetic val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/cover/CoverHost;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/cover/CoverHost;->isCoverViewShowing()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getDisabledFlags1()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->getKnoxNavbarHiddenChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->updateNavigationBarHidden()V

    :cond_3
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
