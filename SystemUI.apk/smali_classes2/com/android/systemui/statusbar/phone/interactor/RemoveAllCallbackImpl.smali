.class public Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallbackImpl;
.super Ljava/lang/Object;
.source "RemoveAllCallbackImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/RemoveAllCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->unregisterAllCallbacks()V

    return-void
.end method
