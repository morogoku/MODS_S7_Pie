.class public Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public setDialogStateForInDisplayFingerprint(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method
