.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$r7cS3UUVfuWZSI_8UEK8J-09O9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$r7cS3UUVfuWZSI_8UEK8J-09O9A;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$r7cS3UUVfuWZSI_8UEK8J-09O9A;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$r7cS3UUVfuWZSI_8UEK8J-09O9A;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$r7cS3UUVfuWZSI_8UEK8J-09O9A;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleKeyguardStateUpdated$1(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V

    return-void
.end method
