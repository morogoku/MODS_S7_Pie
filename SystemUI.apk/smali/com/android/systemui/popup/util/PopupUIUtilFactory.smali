.class public Lcom/android/systemui/popup/util/PopupUIUtilFactory;
.super Ljava/lang/Object;
.source "PopupUIUtilFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDisplayManagerWrapper()Lcom/android/systemui/popup/util/DisplayManagerWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    return-object v0
.end method

.method public getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-object v0
.end method

.method public getKeyguardUpdateMonitorWrapper()Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object v0
.end method

.method public getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/PopupUILogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/popup/util/PopupUILogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object v0
.end method

.method public getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    return-object v0
.end method

.method public getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-direct {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->mUtils:Lcom/android/systemui/popup/util/PopupUIUtil;

    return-object v0
.end method
