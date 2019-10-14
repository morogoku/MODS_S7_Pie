.class public Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;
.super Ljava/lang/Object;
.source "FingerprintInDisplayStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;


# instance fields
.field private final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    return-void
.end method


# virtual methods
.method public doActionBeforeSecureConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method

.method public onCreateActions(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method

.method public onDispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/FingerprintInDisplayStrategy;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
