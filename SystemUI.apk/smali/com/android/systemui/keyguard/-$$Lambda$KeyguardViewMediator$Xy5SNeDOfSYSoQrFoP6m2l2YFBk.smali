.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$1:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$Xy5SNeDOfSYSoQrFoP6m2l2YFBk;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$handleSetBendedPendingIntent$7(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
