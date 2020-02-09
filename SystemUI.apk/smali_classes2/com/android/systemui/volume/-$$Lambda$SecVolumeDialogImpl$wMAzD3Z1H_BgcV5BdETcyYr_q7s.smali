.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

.field private final synthetic f$1:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;->f$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;->f$1:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;->f$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$wMAzD3Z1H_BgcV5BdETcyYr_q7s;->f$1:Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->lambda$showSafetyWarningH$0(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/view/Window;)V

    return-void
.end method
