.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/ShortcutPicker;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/support/v7/preference/PreferenceScreen;

.field private final synthetic f$3:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$2:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$3:Landroid/support/v7/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$0:Lcom/android/systemui/tuner/ShortcutPicker;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$2:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;->f$3:Landroid/support/v7/preference/PreferenceCategory;

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$onCreatePreferences$1(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method
