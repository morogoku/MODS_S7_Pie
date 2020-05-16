.class Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "DeXLauncherConfigurationInternal.java"


# static fields
.field public static final ALPHABETIC_GRID:Ljava/lang/String; = "alphabetical_order"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_GRID:Ljava/lang/String; = "custom_order"

.field private static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field private static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field private static final KEY_HOME_URL:Ljava/lang/String; = "shortcut_uri"

.field private static final KEY_ICON_RESOURCE:Ljava/lang/String; = "shortcut_resource"

.field private static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field private static final KEY_OPTION_ORDER:Ljava/lang/String; = "option_order"

.field private static final KEY_SHORTCUT_TITLE:Ljava/lang/String; = "shortcut_title"

.field private static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field private static final METHOD_ADD_URL_SHORTCUT:Ljava/lang/String; = "add_uri_shortcut"

.field private static final METHOD_CHANGE_ORDER:Ljava/lang/String; = "change_order"

.field private static final METHOD_GET_ORDER:Ljava/lang/String; = "get_order"

.field private static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field private static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field private static final METHOD_REMOVE_URL_SHORTCUT:Ljava/lang/String; = "remove_uri_shortcut"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_ALREADY_EMPTY:I = -0x6

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PAGE_FULL:I = -0x5

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final TYPE_GRID:Ljava/lang/String; = "type_order"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sec.android.app.desktoplauncher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addShortcut(Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

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

.method public addURLShortcut(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "shortcut_title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "shortcut_uri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "shortcut_resource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "add_uri_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public changeOrder(Ljava/lang/String;)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "option_order"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "change_order"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getOrder()I
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "get_order"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public makeEmptyPosition(Landroid/graphics/Point;)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "coordination_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

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

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

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

.method public removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "shortcut_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "component"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "remove_uri_shortcut"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "invocation_result"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method
