.class Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemDatabase"
.end annotation


# static fields
.field private static final ATTR_TIMA_VERSION:Ljava/lang/String; = "timaVersion"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final ELEMENT_SECURE_FS:Ljava/lang/String; = "secure_fs"

.field private static final SECURE_FS_XML:Ljava/lang/String; = "secure_fs.xml"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SecureFileSystemManager;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->this$1:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSecureFsXmlFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/secure_fs.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateSecureFsXml(ILjava/lang/String;)I
    .registers 15

    const/4 v0, 0x0

    const/16 v1, -0x63

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->getSecureFsXmlFile()Ljava/io/File;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_76

    move-object v0, v2

    nop

    :try_start_9
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string/jumbo v5, "secure_fs"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v6, "timaVersion"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    const-string/jumbo v7, "version"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    invoke-interface {v6, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9

    const-string/jumbo v10, "indent"

    const-string/jumbo v11, "yes"

    invoke-virtual {v9, v10, v11}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v10, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v11, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v11, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v10, v11}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_5b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_5b} :catch_6a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_5b} :catch_5e

    nop

    const/4 v1, 0x0

    return v1

    :catch_5e
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string v3, "SecureFileSystem"

    const-string v4, " putPolicy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_6a
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string v3, "SecureFileSystem"

    const-string v4, " putPolicy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_76
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "SecureFileSystem"

    const-string v4, " putPolicy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
