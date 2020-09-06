.class Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "LauncherConfigurationInternal.java"


# static fields
.field private static final ARG_GETHOMEMODE_HOMEMODE:Ljava/lang/String; = "home_mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_SHORTCUT_FOR_EASYMODE:I = 0x3e9

.field public static final HOME_MODE_APPS:I = 0x3

.field public static final HOME_MODE_EASY:I = 0x1

.field public static final HOME_MODE_HOME_ONLY:I = 0x2

.field private static final KEY_CELLDIMENSION_COLS_INT:Ljava/lang/String; = "cols"

.field private static final KEY_CELLDIMENSION_ROWS_INT:Ljava/lang/String; = "rows"

.field private static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field private static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field private static final KEY_COORDINATION_SIZE_POINT:Ljava/lang/String; = "coordination_size"

.field private static final KEY_FEATURE_INT:Ljava/lang/String; = "feature"

.field private static final KEY_HOMEMODE_STRING:Ljava/lang/String; = "home_mode"

.field private static final KEY_INDEX_INT:Ljava/lang/String; = "index"

.field private static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field private static final KEY_ITEMCOUNT_INT:Ljava/lang/String; = "itemcount"

.field private static final KEY_PAGE_INT:Ljava/lang/String; = "page"

.field private static final KEY_STATE_BOOLEAN:Ljava/lang/String; = "state"

.field private static final KEY_SUPPLEMENT_SERVICE_PAGE_VISIBILITY_BOOLEAN:Ljava/lang/String; = "visibility"

.field private static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field private static final METHOD_ADD_WIDGET:Ljava/lang/String; = "add_widget"

.field private static final METHOD_DISABLE_APPS_BUTTON:Ljava/lang/String; = "disable_apps_button"

.field private static final METHOD_ENABLE_APPS_BUTTON:Ljava/lang/String; = "enable_apps_button"

.field private static final METHOD_GET_APPS_BUTTON_STATE:Ljava/lang/String; = "get_apps_button_state"

.field private static final METHOD_GET_APPS_CELL_DIMENSION:Ljava/lang/String; = "get_apps_cell_dimension"

.field private static final METHOD_GET_HOME_CELL_DIMENSION:Ljava/lang/String; = "get_home_cell_dimension"

.field private static final METHOD_GET_HOME_MODE:Ljava/lang/String; = "get_home_mode"

.field private static final METHOD_GET_HOTSEAT_ITEM:Ljava/lang/String; = "get_hotseat_item"

.field private static final METHOD_GET_HOTSEAT_ITEM_COUNT:Ljava/lang/String; = "get_hotseat_item_count"

.field private static final METHOD_GET_HOTSEAT_MAXITEM_COUNT:Ljava/lang/String; = " get_hotseat_maxitem_count"

.field private static final METHOD_GET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "get_supplement_service_page_visibility"

.field private static final METHOD_IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field private static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field private static final METHOD_REMOVE_HOTSEAT_ITEM:Ljava/lang/String; = "remove_hotseat_item"

.field private static final METHOD_REMOVE_PAGE_FROM_HOME:Ljava/lang/String; = "remove_page_from_home"

.field private static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field private static final METHOD_REMOVE_WIDGET:Ljava/lang/String; = "remove_widget"

.field private static final METHOD_SET_HOTSEAT_ITEM:Ljava/lang/String; = "add_hotseat_item"

.field private static final METHOD_SET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "set_supplement_service_page_visibility"

.field private static final METHOD_SWITCH_HOME_MODE:Ljava/lang/String; = "switch_home_mode"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final SUPPLEMENT_SERVICE_PAGE_INVISIBLE:I = 0x5

.field public static final SUPPLEMENT_SERVICE_PAGE_VISIBLE:I = 0x4

.field private static final VALUE_GETHOMEMODE_EASYMODE:Ljava/lang/String; = "easy_mode"

.field private static final VALUE_GETHOMEMODE_HOMEANDAPPSMODE:Ljava/lang/String; = "home_apps_mode"

.field private static final VALUE_GETHOMEMODE_HOMEONLYMODE:Ljava/lang/String; = "home_only_mode"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.android.app.launcher.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addShortcut(ILandroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public addWidget(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "coordination_size"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_widget"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getAppsButtonVisibility()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_apps_button_state"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invocation_result"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    :cond_21
    return v2
.end method

.method public getAppsCellDimension()Landroid/util/Size;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_apps_cell_dimension"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "rows"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "cols"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public getHomeCellDimension()Landroid/util/Size;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_home_cell_dimension"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "rows"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "cols"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public getHomeMode()I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_home_mode"

    const-string v3, "home_mode"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "home_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easy_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    return v2

    :cond_21
    const-string v2, "home_apps_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x3

    return v2

    :cond_2b
    const-string v2, "home_only_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x2

    return v2

    :cond_35
    const/4 v2, -0x2

    return v2
.end method

.method public getHotseatItem(I)Landroid/content/ComponentName;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "get_hotseat_item"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "component"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v2, :cond_30

    instance-of v5, v3, Landroid/content/ComponentName;

    if-eqz v5, :cond_30

    move-object v4, v3

    check-cast v4, Landroid/content/ComponentName;

    return-object v4

    :cond_30
    return-object v4
.end method

.method public getHotseatItemCount()I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_hotseat_item_count"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemcount"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getHotseatMaxItemCount()I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, " get_hotseat_maxitem_count"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "itemcount"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSupplementServicePageVisibility()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "get_supplement_service_page_visibility"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invocation_result"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v2, "visibility"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method public isSupported(I)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_supported"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public makeEmptyPosition(ILandroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "coordination_size"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "make_empty_position"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public removeHotseatItem(I)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "remove_hotseat_item"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public removePageFromHome(I)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "remove_page_from_home"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "remove_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public removeWidget(Landroid/content/ComponentName;)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "remove_widget"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public setAppsButtonVisibility(Z)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    iget-object v2, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "enable_apps_button"

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_25

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "disable_apps_button"

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_25
    const-string v1, "invocation_result"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setHotseatItem(ILandroid/content/ComponentName;)I
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_hotseat_item"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public setSupplementServicePageVisibility(Z)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "set_supplement_service_page_visibility"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public switchHomeMode(I)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_10

    const-string v1, "home_mode"

    const-string v2, "home_apps_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_10
    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    const-string v1, "home_mode"

    const-string v2, "home_only_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    iget-object v1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "switch_home_mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_32
    const/4 v1, -0x1

    return v1
.end method
