.class public final synthetic Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$HideSettingImpl$7I3Cts7xjqcx92GK5_SBItLt2VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$HideSettingImpl$7I3Cts7xjqcx92GK5_SBItLt2VY;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$HideSettingImpl$7I3Cts7xjqcx92GK5_SBItLt2VY;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/interactor/HideSettingImpl;->lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V

    return-void
.end method
