.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinView$2;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView$2;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$0:Lcom/android/keyguard/KeyguardSecSimPinView$2;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$1:I

    iput p3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$2:I

    iput p4, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$0:Lcom/android/keyguard/KeyguardSecSimPinView$2;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$1:I

    iget v2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$2:I

    iget v3, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPinView$2;->lambda$onSimCheckResponse$0(Lcom/android/keyguard/KeyguardSecSimPinView$2;III)V

    return-void
.end method
