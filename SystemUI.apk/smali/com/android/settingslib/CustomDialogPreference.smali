.class public Lcom/android/settingslib/CustomDialogPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    return-object v0
.end method

.method private getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/CustomDialogPreference;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method private setFragment(Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/CustomDialogPreference;->mFragment:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method
