.class synthetic Lcom/android/keyguard/KeyguardSecPatternView$5;
.super Ljava/lang/Object;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->values()[Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/KeyguardSecPatternView$5;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    :try_start_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecPatternView$5;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecPatternView$5;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
