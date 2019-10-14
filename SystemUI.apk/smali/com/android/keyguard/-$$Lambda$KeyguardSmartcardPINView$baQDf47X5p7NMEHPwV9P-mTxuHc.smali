.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;->f$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;->f$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSmartcardPINView$baQDf47X5p7NMEHPwV9P-mTxuHc;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->lambda$verifyPasswordAndUnlock$0(Lcom/android/keyguard/KeyguardSmartcardPINView;IZI)V

    return-void
.end method
