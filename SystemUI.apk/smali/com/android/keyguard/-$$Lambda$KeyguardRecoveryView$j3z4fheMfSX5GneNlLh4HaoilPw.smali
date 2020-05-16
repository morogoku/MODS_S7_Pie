.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardRecoveryView$j3z4fheMfSX5GneNlLh4HaoilPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardRecoveryView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardRecoveryView$j3z4fheMfSX5GneNlLh4HaoilPw;->f$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardRecoveryView$j3z4fheMfSX5GneNlLh4HaoilPw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardRecoveryView$j3z4fheMfSX5GneNlLh4HaoilPw;->f$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardRecoveryView$j3z4fheMfSX5GneNlLh4HaoilPw;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardRecoveryView;->lambda$verifyPasswordAndUnlock$4(Lcom/android/keyguard/KeyguardRecoveryView;IZI)V

    return-void
.end method
