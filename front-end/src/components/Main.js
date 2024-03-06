import { Button, Col, Flex, Layout, Menu, Modal, Row, Input } from 'antd'
import React, { useState } from 'react'
import IndexRouter from '../routers/IndexRouter';
import { Content } from 'antd/es/layout/layout';
import './Main.css'
import { EnvironmentFilled } from '@ant-design/icons';
const { Search } = Input;
const items = [
    {
        label: 'Tips',
        key: 'tips',
        children: [
            {
                label: (
                    <a href="https://ant.design" target="_blank" rel="noopener noreferrer">
                        Clothes Protection
                    </a>
                ),
                key: 'tip1'
            },
            {
                label: (
                    <a href="https://ant.design" target="_blank" rel="noopener noreferrer">
                        UV impacts
                    </a>
                ),
                key: 'tip2'
            },
            {
                label: (
                    <a href="https://ant.design" target="_blank" rel="noopener noreferrer">
                        Sunscreen Usage
                    </a>
                ),
                key: 'tip2'
            },
        ],
    },
    {
        label: (
            <a href="/reminder">
                Reminder
            </a>
        ),
        children: [
            {
                label: (
                    <a href="https://ant.design" target="_blank" rel="noopener noreferrer">
                        Tracking Reminder
                    </a>
                ),
                key: 'tip1'
            }
        ],
        key: 'reminder',
    },
    {
        label: (
            <a href="/learn-more">
                Learn more
            </a>
        ),
        key: 'learn-more',
    },

    {
        label: (
            <a href="/about-us">
                About us
            </a>
        ),
        key: 'about-us',
    },
];

const logoColStyle = {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
};

const menuColStyle = {
    display: 'flex',
    flexDirection: 'column', // Stack children vertically
    justifyContent: 'flex-end', // Align children to the bottom
    height: '200px', // Match height with the logo column
    fontWeight: 'bold',
    fontSize: '40px',
};

const contentStyle = {
    textAlign: 'center',
    minHeight: '100vh',
    lineHeight: '120px',
    backgroundColor: '#fff'
};

export default function Main() {
    const [current, setCurrent] = useState('mail');
    const [isModalOpen, setIsModalOpen] = useState(false);
    const showModal = () => {
        setIsModalOpen(true);
    };
    const handleOk = () => {
        setIsModalOpen(false);
    };
    const handleCancel = () => {
        setIsModalOpen(false);
    };
    const onClick = (e) => {
        console.log('click ', e);
        setCurrent(e.key);
    }
    const onSearch = (value, _e, info) => console.log(info?.source, value);
    return (
        <>
            <Flex gap="middle" wrap="wrap">
                <Layout>
                    <Row style={{ height: '50px', backgroundColor: '#fff' }}>
                        <Col span={8}></Col>
                        <Col span={8} style={{ display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                            <EnvironmentFilled style={{ marginRight: '10px', color: '#29489C', fontSize: '20px' }} />
                            <h3>Melbourne, VIC</h3>
                            <Button type='link' style={{ color: '#29489C' }} onClick={showModal}>change location</Button>
                        </Col>
                        <Col span={8}></Col>
                    </Row>
                    <Row style={{ backgroundColor: '#fff' }}>
                        <Col span={8} style={logoColStyle}>
                            <a href='/'>
                                <img src='logo.png' alt='logo' width='300px' height='200px' />
                            </a>
                        </Col>
                        <Col span={16} style={menuColStyle}>
                            <Menu onClick={onClick} selectedKeys={[current]} mode="horizontal" items={items} className="menu-item-spacing" style={{ fontSize: '20px' }} />
                        </Col>
                    </Row>

                    <Content style={contentStyle}>
                        <IndexRouter></IndexRouter>
                    </Content>

                </Layout>
            </Flex>
            <Modal title="Set your position" open={isModalOpen} onOk={handleOk} onCancel={handleCancel}>
                <Search
                    placeholder="enter suburb name or postcode..."
                    allowClear
                    enterButton="Search"
                    size="large"
                    onSearch={onSearch}
                />
            </Modal>
        </>
    )
}
